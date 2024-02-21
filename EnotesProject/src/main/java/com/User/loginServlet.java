package com.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.UserDAO;
import com.Db.DbConnect;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("uemail");
		String password = req.getParameter("upassword");

		UserDetails us = new UserDetails();
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DbConnect.getConn());
		UserDetails user = dao.loginUser(us);

		if (user!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("userD", user);
			resp.sendRedirect("home.jsp");
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("login-failed", "Invalid UserName and Password");
			resp.sendRedirect("login.jsp");
		}

	}

}
