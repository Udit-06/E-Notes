package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DbConnect;
import com.User.Post;

@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int uid = Integer.parseInt(req.getParameter("uid"));
		String title = req.getParameter("title");
		String content = req.getParameter("content");

		PostDAO dao = new PostDAO(DbConnect.getConn());
		boolean f = dao.AddNotes(title, content, uid);

		if (f) {
			System.out.println("data insert successfully");
			resp.sendRedirect("showNotes.jsp");
		} else {
			System.out.println("data not inserted");
		}

	}

}
