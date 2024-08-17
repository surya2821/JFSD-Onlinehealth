package com.example.sdpproject;

import java.util.List;

public interface PatientDAO {
	public void insert(PatientUser p);
	public void delete(int id);
	public List<PatientUser> getAll();
	public List<PatientUser> role(String name);
	public PatientUser name(String name);
}
