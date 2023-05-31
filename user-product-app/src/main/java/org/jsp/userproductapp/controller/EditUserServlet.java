package org.jsp.userproductapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.userproductapp.dao.UserDao;
import org.jsp.userproductapp.dto.User;
@WebServlet("/edit")
public class EditUserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		long phone=Long.parseLong(req.getParameter("ph"));
		String password=req.getParameter("ps");
		String email=req.getParameter("em");
		String name=req.getParameter("nm");
		String gender=req.getParameter("gender");
		int age=Integer.parseInt(req.getParameter("age"));
		User u =new User(name, gender, password,email,phone , age); 
		u.setId(id);
		UserDao dao= new UserDao();
		u=dao.updateUser(u);
		HttpSession session =req.getSession();
		session.setAttribute("user", u);
		PrintWriter writer = resp.getWriter();
		writer.write("<html><body><h2 style.color=red> User updated Succesfully</h2></body></html>");
		resp.setHeader("Refresh", "3; URL=home.jsp");

	}

}
