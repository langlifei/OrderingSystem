package org.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.userDao;

public class updatePasswordServlet extends HttpServlet{
	public void doGet(HttpServletRequest request , HttpServletResponse response)
	{
		userDao userDao = new userDao();
		if(userDao.updatePassword(request.getParameter("username"),request.getParameter("password")))
		{
			
		}
	}
}
