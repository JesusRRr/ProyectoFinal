package com.proyectofinal.model;

import java.time.LocalDate;
import java.util.ArrayList;

public class Fecha {
	String fechaLocal;
	
	
	static public ArrayList<String> getfechas(int dias) {
		ArrayList Fechas = new ArrayList();
		
		LocalDate myObj = LocalDate.now();
		Fechas.add(myObj);
		return Fechas;
	}
}


