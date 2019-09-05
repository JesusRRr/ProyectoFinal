package com.proyectofinal.model;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;

public class Fecha {
	String fechaLocal;
	
	
	static public ArrayList<String> getfechas(int dias) {
		ArrayList Fechas = new ArrayList();
		
		LocalDate date = LocalDate.now();
	    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
		
		for(int i=0;i<dias;i++) {
			Fechas.add(date.plusDays(i).toString());
		}
		
		return Fechas;
	}
	
	static public String getDayBefore() {
		String dayBefore;
		LocalDate date = LocalDate.now();
		dayBefore=date.minusDays(1).toString();
		
		return dayBefore;
	}
	static public String getDay() {
		String day;
		LocalDate date = LocalDate.now();
		day=date.toString();
		
		return day;
	}
	
	static public String getFutureDay(int days) {
		String futureDay;
		LocalDate date = LocalDate.now();
		futureDay=date.plusDays(days).toString();
		
		return futureDay;
	}
	
}


