package com.proyectofinal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegistroUsuarioServlet
 */
@WebServlet("/RegistroUsuarioServlet")
public class RegistroUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroUsuarioServlet() {
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
		ResultSet rs=null;
		
		String urlServidor="jdbc:mysql://localhost:3306/CentroSauld?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String user="root";
		String pass="root";
		String sentenciaSQL="";
		
		String emailUsuario=request.getParameter("emailUsuario2");
		String passUsuario=request.getParameter("passUsuario2");
		ArrayList<Usuario> Usuarios = new ArrayList<Usuario>();
		boolean ban=false;
		
		System.out.print(emailUsuario+passUsuario);
		
		Usuario usuario = new Usuario();
		if(emailUsuario=="") {
			response.sendRedirect("Error.jsp");
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
			conn = DriverManager.getConnection(urlServidor,user,pass);
			
			sentenciaSQL="SELECT * FROM Usuario";
			
			ps = conn.prepareStatement(sentenciaSQL);
			
			rs=ps.executeQuery();
			
			
			while(rs.next()) {
				
				if(emailUsuario.equals(rs.getString(3))
						&& passUsuario.equals(rs.getString(4))) {
					
					usuario.setIdUsuario(rs.getInt(1));
					usuario.setNombreUsuario(rs.getString(2));
					usuario.setEmailUsuario(rs.getString(3));
					usuario.setPassUsuario(rs.getString(4));
					//salida.print("Usuario correcto con id"+usuario);
					ban=true;
				}
				
			}
			
			if(ban==true) {
				HttpSession session = request.getSession();
				session.setAttribute("nombreUsuario", usuario.getNombreUsuario());
				//session.setAttribute("idUsuario",usuario.getIdUsuario());
				//salida.print("Se armo");
				response.sendRedirect("Bienvenido.jsp");
				
			}else {
				response.sendRedirect("Error.jsp");
				//salida.print("Nel pastel");
			}
		
			
			ps.close();
			conn.close();
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
