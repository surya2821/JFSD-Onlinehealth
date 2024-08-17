package com.example.sdpproject;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepo extends JpaRepository<Appointment, Integer> {
	public List<Appointment> findBypat(String pat);
	public List<Appointment> findBydoc(String name);
}
