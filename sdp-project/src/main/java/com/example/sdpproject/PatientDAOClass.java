package com.example.sdpproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PatientDAOClass implements PatientDAO {
	
	PatientRepo pr;
	
	
	
	public PatientDAOClass() {
	}

	@Autowired
	public PatientDAOClass(PatientRepo pr) {
		this.pr = pr;
	}

	@Override
	public void insert(PatientUser p) {
		pr.save(p);
		
	}

	@Override
	public void delete(int id) {
		pr.deleteById(id);
	}

	@Override
	public List<PatientUser> getAll() {
		List<PatientUser> l=pr.findAll();
		return l;
	}

	@Override
	public List<PatientUser> role(String name) {
		return pr.findByrole(name);
	}

	@Override
	public PatientUser name(String name) {
		return pr.findByname(name);
	}

}
