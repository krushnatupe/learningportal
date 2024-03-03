package com.learningportal.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("uemail");
		String password = request.getParameter("upass");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		PrintWriter out = response.getWriter();
		
		if(email==null || email.equals("")) {
			request.setAttribute("status","Invalid_email");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else if(password==null || password.equals("")) {
			request.setAttribute("status","Invalid_password");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			
			try {
				Class.forName("org.postgresql.Driver");
				
				con = DriverManager.getConnection("jdbc:postgresql://localhost/lp","postgres","nikit");
				if(con==null) {
					out.println("database is not connected");
				}
				else {
					pstmt = con.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
					
					pstmt.setString(1, email);
					pstmt.setString(2, password);
					
					rs = pstmt.executeQuery();
					if(rs.next()) {
						session.setAttribute("name", rs.getString("name"));
						dispatcher = request.getRequestDispatcher("index.jsp");
					}
					else {
						request.setAttribute("status","failed");
						dispatcher = request.getRequestDispatcher("login.jsp");
					}
					dispatcher.forward(request, response);
				}
				
			}catch(Exception e) {
				out.print(e);
			}
		}
	}

}
