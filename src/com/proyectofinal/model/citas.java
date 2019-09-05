package com.proyectofinal.model;

import java.util.HashMap;

public class citas {
	private int idCitas;
	private String diaCita;
	private int idUsuario;

	
	public int getIdCitas() {
		return idCitas;
	}
	public void setIdCitas(int idCitas) {
		this.idCitas = idCitas;
	}
	public String getDiaCita() {
		return diaCita;
	}
	public void setDiaCita(String diaCita) {
		this.diaCita = diaCita;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	@Override
	public String toString() {
		return "citas [idCitas=" + idCitas + ", diaCita=" + diaCita + ", idUsuario=" + idUsuario + "]";
	}
	
	public HashMap<String,Integer> saveMapCitas(String date, int id) {
		HashMap<String,Integer> mapUsers = new HashMap<String, Integer>();
		mapUsers.put(date, id);
		
		return mapUsers;
	}
	
	
	
}
