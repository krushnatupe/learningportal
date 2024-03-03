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

import org.postgresql.util.PSQLException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upass = request.getParameter("pass");
		String repass = request.getParameter("re-pass");
		Connection con = null;
		PreparedStatement pstmt = null;
		RequestDispatcher rd = null;
		int resp;
		PrintWriter out = response.getWriter();
		
		if(uname==null || uname.equals("")) {
			request.setAttribute("status","Invalid_name");
			rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
		else if(uemail==null || uemail.equals("")) {
			request.setAttribute("status","Invalid_email");
			rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
		else if(!upass.equals(repass)) {
			request.setAttribute("status","nomatch");
			rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
		else if(upass==null || upass.equals("")) {
			request.setAttribute("status","Invalid_pass");
			rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
		else {		
			try {
				Class.forName("org.postgresql.Driver");
				
				con = DriverManager.getConnection("jdbc:postgresql://localhost/lp","postgres","nikit");
				if(con==null) {
					out.println("Database is not connected!");
				}else{				
					
					pstmt = con.prepareStatement("insert into users(name,email,password)values(?,?,?)");
					
					pstmt.setString(1, uname);
					pstmt.setString(2, uemail);
					pstmt.setString(3, upass);
					
					resp = pstmt.executeUpdate();
					rd = request.getRequestDispatcher("signup.jsp");
					
					if(resp>0) {
						
						request.setAttribute("status","success");
					}
					else
						request.setAttribute("status","failed");
				}
				
				rd.forward(request, response);
				
			}catch(PSQLException pe) {
				request.setAttribute("status","User_exist");
				rd = request.getRequestDispatcher("signup.jsp");
				rd.forward(request, response);
			}
			catch(Exception e) {
				out.println(e);
			}
		}
		
		
	}

}
