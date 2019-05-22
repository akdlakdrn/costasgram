package com.cos.costagram.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cos.costagram.model.Follow;
import com.cos.costagram.model.Image;
import com.cos.costagram.model.Tag;
import com.cos.costagram.model.User;
import com.cos.costagram.repository.FollowRepository;
import com.cos.costagram.repository.ImageRepository;
import com.cos.costagram.repository.TagRepository;
import com.cos.costagram.repository.UserRepository;
import com.cos.costagram.service.CustomUserDetails;
import com.cos.costagram.util.UtilCos;

@Controller
@RequestMapping("/dummy")
public class DummyController {
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ImageRepository imageRepository;

	@Autowired
	private TagRepository tagRepository;
	
	//@inject
	@Autowired
	private FollowRepository followRepository;
	
	@PostMapping("/create")
	public @ResponseBody User create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return user;
	}
	

	@GetMapping("/images")
	public @ResponseBody List<Image> image(@AuthenticationPrincipal CustomUserDetails userDetail,Model model) {
		
		//1.User(One)
		User user = userDetail.getUser();
		
		System.out.println("user.getId() :" + user.getId());//유저를 들고왔는지 확인
		//2.User:follow(list)
		List<Follow> followList = followRepository.findByFromUserId(user.getId());
		
		
		//3.User:follow:Image (List) 4.follow:Image:Like(count)(One)
		List<Image> imageList = new ArrayList<>();
		for(Follow f : followList) {
			List<Image> list = imageRepository.findByUserId(f.getToUser().getId());
			for(Image i : list) {
				imageList.add(i);
			}
		}
		
		//4.model에 담아주기
		model.addAttribute("user", user);
		model.addAttribute("imageList", imageList);
		return imageList;
	}

	@PostMapping("/image/upload")
	public @ResponseBody Image imageUpload(@AuthenticationPrincipal CustomUserDetails userDetail,
			@RequestParam("file") MultipartFile file, String caption, String location, String tags) throws IOException {
		Path filePath = Paths.get(UtilCos.getResourcePath() + file.getOriginalFilename());

		Files.write(filePath, file.getBytes());

		User user = userDetail.getUser();

		List<String> tagList = UtilCos.tagParser(tags);

		Image image = Image.builder().caption(caption).location(location).user(user).mimeType(file.getContentType())
				.fileName(file.getOriginalFilename()).filePath("/image/" + file.getOriginalFilename()).build();

		imageRepository.save(image);

		for (String t : tagList) {
			Tag tag = new Tag();
			tag.setName(t);
			tag.setImage(image);
			tag.setUser(user);
			tagRepository.save(tag);
			image.getTags().add(tag);// db에 영향을 미치지 않음.

		}

		return image;
	}
}
