package com.proyectofinal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrearUsuarioServlet
 */
@WebServlet("/CrearUsuarioServlet")
public class CrearUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter salida = response.getWriter();
		
		Connection conn = null;
		PreparedStatement ps= null;
		
		String urlServidor="jdbc:mysql://localhost:3306/CentroSauld?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String user="root";
		String pass="root";
		String sentenciaSQL="";
		
		String nombreUsuario=request.getParameter("nombreUsuario");
		String emailUsuario=request.getParameter("emailUsuario");
		String passUsuario=request.getParameter("passUsuario");
		
	
		Usuario usuario = new Usuario();
	
		usuario.setNombreUsuario(nombreUsuario);
		usuario.setEmailUsuario(emailUsuario);
		usuario.setPassUsuario(passUsuario);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
		
			conn = DriverManager.getConnection(urlServidor,user,pass);
			
			sentenciaSQL="INSERT INTO Usuario "
					+ "(nombreUsuario, emailUsuario, passUsuario) "
					+ "values(?,?,?)";
			
			ps = conn.prepareStatement(sentenciaSQL);
			
			ps.setString(1,usuario.getNombreUsuario());
			ps.setString(2,usuario.getEmailUsuario());
			ps.setString(3,usuario.getPassUsuario());
			
			ps.executeUpdate();
			salida.print(ps);
			
			ps.close();
			conn.close();
			salida.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

}
