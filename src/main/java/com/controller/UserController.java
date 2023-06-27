package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.User;
import com.dao.UserDao;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("sign up"))
			{
				boolean flag = UserDao.checkEmail(request.getParameter("email"));
				if(flag==true)
				{
					request.setAttribute("msg", "Email already in Use!");
					request.getRequestDispatcher("sign_up.jsp").forward(request, response);
				}
				else if(request.getParameter("password").equals(request.getParameter("cpassword")))
				{
					User u = new User();
					u.setEmail(request.getParameter("email"));
					u.setPassword(request.getParameter("password"));
					u.setUsertype(request.getParameter("usertype"));
					UserDao.userSignup(u);
					request.setAttribute("msg", "Your Sign Up is Successful");
					request.getRequestDispatcher("sign_up.jsp").forward(request, response);
				}
				else
				{
					String msg = "Password does not Matched";
					request.setAttribute("msg", msg);
					request.getRequestDispatcher("sign_up.jsp").forward(request, response);
				}
			}
			
			else if(action.equalsIgnoreCase("log in"))
			{
				User u = UserDao.checkLogin(request.getParameter("email"), request.getParameter("password"));
				if(u == null)
				{
					String msg="Email or Password is Incorrect";
					request.setAttribute("msg", msg);
					request.getRequestDispatcher("login.jsp").forward(request, response);;
				}
				else if(u.getUsertype().equals("gp"))
				{
					HttpSession session = request.getSession();
					session.setAttribute("u", u);
					request.getRequestDispatcher("gp_home.jsp").forward(request, response);
				}
				else
				{ 
					HttpSession session = request.getSession();
					session.setAttribute("u", u);
					request.getRequestDispatcher("Rev_home.jsp").forward(request, response);
				}
			}
				}

}
