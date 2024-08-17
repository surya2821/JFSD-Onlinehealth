package com.example.sdpproject;

import java.util.List;

public interface AppointmentDAO {
	public void book(Appointment a);
	public List<Appointment> papp(String pat);
	public List<Appointment> dapp(String name);
}
