package com.example.sdpproject;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepo extends JpaRepository<Images, Integer>{
	public List<Images> findByname(String name); 
}
