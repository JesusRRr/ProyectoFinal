package com.proyectofinal.controller;

public class Usuario {
	private int idUsuario;
	private String nombreUsuario;
	private String emailUsuario;
	private String passUsuario;
	
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	public String getEmailUsuario() {
		return emailUsuario;
	}
	public void setEmailUsuario(String emailUsuario) {
		this.emailUsuario = emailUsuario;
	}
	public String getPassUsuario() {
		return passUsuario;
	}
	public void setPassUsuario(String passUsuario) {
		this.passUsuario = passUsuario;
	}
	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", nombreUsuario=" + nombreUsuario + ", emailUsuario=" + emailUsuario
				+ ", passUsuario=" + passUsuario + "]";
	}
	
	
	
	

}
