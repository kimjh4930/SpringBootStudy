package com.example.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.domain.Post;

public interface PostDao extends JpaRepository<Post, Integer>{

}
