package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			HttpSession session=req.getSession();
			session.removeAttribute("userD");
			
			HttpSession session2=req.getSession();
			session.setAttribute("logoutMsg", "Logout Successfully...");;
			resp.sendRedirect("login.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	

}
