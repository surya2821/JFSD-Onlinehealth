package com.example.sdpproject;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepo extends JpaRepository<PatientUser, Integer> {
	public List<PatientUser> findByrole(String r);
	public PatientUser findByname(String name);
}
