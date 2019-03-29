package com.igeek.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{

	/**
	 * ����GET����ķ���
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//�ص�doPost����,�Ա�����get�����postʵ�ֵ�ҵ������ͬ
		doPost(req, resp);
	}

	/**
	 * ��������POST����ķ���
	 * @param req ����
	 * @param resp ��Ӧ
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("�����˿ͻ��˵�����");
		//��ȡ���ύ����������
		//��ȡ�û����ı����ֵ ������ʾ��Ԫ�ص�nameֵ
		String userName = req.getParameter("userName");
		//��ȡ�����ı����ֵ
		String password = req.getParameter("pwd");
		System.out.println("�ύ���û���:"+userName);
		System.out.println("�ύ������:"+password);
		
		//�ж��û��������Ƿ���ȷ
		if(userName.equals("admin")){
			//��Ӧҳ��
			if(password.equals("000"))
				resp.sendRedirect("success.html");
			else{
				//��һ��������ʾ�������ݵ�����,�ڶ���������ʾ���ݵ�ֵ
				req.setAttribute("error", "password is invalidate!!");
				//�������ݵ���Ӧʹ������ת��ʵ��,��ʱͨ��req.setAttrbuteд������ݽ�����login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}
		
		else{
			//��������  
			//��һ��������ʾ�������ݵ�����,�ڶ���������ʾ���ݵ�ֵ
			if(password.equals("000")){
				//��һ��������ʾ�������ݵ�����,�ڶ���������ʾ���ݵ�ֵ
				req.setAttribute("error", "username is invalidate!!");
				//�������ݵ���Ӧʹ������ת��ʵ��,��ʱͨ��req.setAttrbuteд������ݽ�����login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
			else{
				//��һ��������ʾ�������ݵ�����,�ڶ���������ʾ���ݵ�ֵ
				req.setAttribute("error", "username and password is invalidate!!");
				//�������ݵ���Ӧʹ������ת��ʵ��,��ʱͨ��req.setAttrbuteд������ݽ�����login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}
	}
}
