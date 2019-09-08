package com.proyectofinal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.proyectofinal.model.citas;

/**
 * Servlet implementation class CitaServlet
 */
@WebServlet("/CitaServlet")
public class CitaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CitaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter salida = response.getWriter();
		
		Connection conn = null;
		PreparedStatement ps= null;
		
		String urlServidor="jdbc:mysql://localhost:3306/CentroSalud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String user="root";
		String pass="root";
		String sentenciaSQL="";
		ResultSet rs=null;
		citas cita = new citas();
		int idUsuario = 0;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
			conn = DriverManager.getConnection(urlServidor,user,pass);
			
			sentenciaSQL="select idUsuario from citas where fecha='2019-09-08'";
			
			ps = conn.prepareStatement(sentenciaSQL);
			
			rs=ps.executeQuery();
			
			while(rs.next()) {
				
				idUsuario=rs.getInt(1);
				salida.print(idUsuario);
			}
			
			if(rs.getRow()==0 && idUsuario==0) {
				ps=null;
				HttpSession session = request.getSession();
				
				cita.setIdUsuario(Integer.parseInt(session.getAttribute("idUsuario").toString()));
				cita.setDiaCita(request.getParameter("cita"));
				
				
				sentenciaSQL="insert into citas"
				+ "(fecha, idUsuario)"
				+ "values(?,?)";
				
				ps=conn.prepareStatement(sentenciaSQL);
				ps.setString(1, cita.getDiaCita());
				ps.setInt(2, cita.getIdUsuario());
				ps.executeUpdate();
				
				salida.print("Usuario registrado");
				
			}else {
				salida.print("El usuario ya tiene cita");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		salida.close();
	}

}
