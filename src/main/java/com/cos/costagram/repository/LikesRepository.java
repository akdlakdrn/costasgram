package com.cos.costagram.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.costagram.model.Likes;

public interface LikesRepository extends JpaRepository<Likes, Integer>{

}
