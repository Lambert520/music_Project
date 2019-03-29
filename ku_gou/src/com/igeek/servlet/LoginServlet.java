package com.igeek.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{

	/**
	 * 处理GET请求的方法
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//回调doPost方法,以便于让get请求和post实现的业务功能相同
		doPost(req, resp);
	}

	/**
	 * 用来处理POST请求的方法
	 * @param req 请求
	 * @param resp 响应
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("处理了客户端的请求");
		//获取表单提交的数据内容
		//获取用户名文本框的值 参数表示表单元素的name值
		String userName = req.getParameter("userName");
		//获取密码文本框的值
		String password = req.getParameter("pwd");
		System.out.println("提交的用户名:"+userName);
		System.out.println("提交的密码:"+password);
		
		//判断用户名密码是否正确
		if(userName.equals("admin")){
			//响应页面
			if(password.equals("000"))
				resp.sendRedirect("success.html");
			else{
				//第一个参数表示传递数据的名称,第二个参数表示传递的值
				req.setAttribute("error", "password is invalidate!!");
				//传递数据的响应使用请求转发实现,此时通过req.setAttrbute写入的数据将传入login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}
		
		else{
			//传递数据  
			//第一个参数表示传递数据的名称,第二个参数表示传递的值
			if(password.equals("000")){
				//第一个参数表示传递数据的名称,第二个参数表示传递的值
				req.setAttribute("error", "username is invalidate!!");
				//传递数据的响应使用请求转发实现,此时通过req.setAttrbute写入的数据将传入login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
			else{
				//第一个参数表示传递数据的名称,第二个参数表示传递的值
				req.setAttribute("error", "username and password is invalidate!!");
				//传递数据的响应使用请求转发实现,此时通过req.setAttrbute写入的数据将传入login.jsp
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}
	}
}
