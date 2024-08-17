package com.example.sdpproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppointmentDAOClass implements AppointmentDAO {
	
	AppointmentRepo ar;
	
	
	@Autowired
	public AppointmentDAOClass(AppointmentRepo ar) {
		this.ar = ar;
	}



	@Override
	public void book(Appointment a) {
		ar.save(a);
	}



	@Override
	public List<Appointment> papp(String pat) {
		return ar.findBypat(pat);
	}



	@Override
	public List<Appointment> dapp(String name) {
		return ar.findBydoc(name);
	}


	
}
