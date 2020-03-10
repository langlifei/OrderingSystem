package org.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dao.userDao;
import org.model.user;

public class loginServlet extends HttpServlet{

	public void doGet(HttpServletRequest request , HttpServletResponse response)
	{
		try {
				request.setCharacterEncoding("utf-8");//�����������
				userDao userDao = new userDao();
				user user = userDao.loginCheck(request.getParameter("username"),request.getParameter("password"));
				if(user != null)
				{
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					response.sendRedirect("home.jsp");	//��֤�ɹ���������ҳ
					}
				else{
					response.sendRedirect("denglu.jsp"); 	//��֤ʧ�ܣ����½����½ҳ��
				}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

	public void doPost(HttpServletRequest request , HttpServletResponse response)
	{
		doGet(request,response);
	}
}
