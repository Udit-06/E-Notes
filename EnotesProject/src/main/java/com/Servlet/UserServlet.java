package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.Db.DbConnect;
import com.User.UserDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("fname");
		String email = req.getParameter("uemail");
		String password = req.getParameter("upassword");

		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DbConnect.getConn());
		boolean f = dao.addUser(us);
		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("reg-sucess", "Registration Successfully...");
			resp.sendRedirect("register.jsp");
		} else {
			session.setAttribute("failed-msg", "Something went wrong on server...");
			resp.sendRedirect("register.jsp");
		}

	}
}
