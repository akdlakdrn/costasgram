package com.cos.costagram.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.costagram.model.User;
import com.cos.costagram.repository.UserRepository;

@Controller
public class UserController {
	
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/")
	public String home() {
		return "/auth/join";
	}
	
	@GetMapping("/auth/login")
	public String authLogin() {
		return "/auth/login";
	}
	
	@GetMapping("/auth/join")
	public String authJoin() {
		return "/auth/join";
	}

	
	@PostMapping("/auth/create")
	public String create(User user) {
		String rawPassword = user.getPassword();
		String encPassword = passwordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		return "/auth/login";
	}
}
