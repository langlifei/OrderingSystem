package org.servlet;

import java.sql.Connection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dao.userDao;
import org.model.user;


public class registServlet extends HttpServlet{
	Connection conn;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("utf-8");
			System.out.println("--------------------------------------------");
			if(request.getParameter("password").equals(request.getParameter("repassword")))
			{
				userDao userDao = new userDao();
				user user = userDao.regist(request, response);
				if(user != null)
				{
//					HttpSession session = request.getSession();
//					user.setUserName(request.getParameter("username"));
//					session.setAttribute("user", user);
					response.sendRedirect("denglu.jsp");		//ע��ɹ��������½ҳ��
				}
			}else{
				response.sendRedirect("regist.jsp");	//�������벻һ��������ע��
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		doGet(request,response);
	}
}
