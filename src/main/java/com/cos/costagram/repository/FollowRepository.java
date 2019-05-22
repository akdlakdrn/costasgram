package com.cos.costagram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Follow;


public interface FollowRepository extends JpaRepository<Follow, Integer>{
	
	//toUser를 뽑아야함 follow가 가지고있는 유저아이디를 찾음
	public List<Follow> findByFromUserId(int fromUser);

}
