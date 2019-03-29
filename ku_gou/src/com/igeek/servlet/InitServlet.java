package com.igeek.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.igeek.Dao.albumDao;
import com.igeek.pojo.Album;

/**
 * ��ʼ����ҳ����
 * @author Administrator
 *
 */
public class InitServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��ѯ��ѯǰ5���赥
		albumDao albumDao = new albumDao();
		ArrayList<Album> list = albumDao.findTopFiveAllbums();
		//����ѯ���ĸ赥���ݵ�ҳ��
		req.setAttribute("list", list);
		//req.getRequestDispatcher("index.jsp").forward(req, resp);
		req.getRequestDispatcher("main.jsp").forward(req, resp);
		
	}
}
