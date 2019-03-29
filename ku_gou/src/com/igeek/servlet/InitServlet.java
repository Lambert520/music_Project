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
 * 初始化首页数据
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
		//查询查询前5个歌单
		albumDao albumDao = new albumDao();
		ArrayList<Album> list = albumDao.findTopFiveAllbums();
		//将查询到的歌单传递到页面
		req.setAttribute("list", list);
		//req.getRequestDispatcher("index.jsp").forward(req, resp);
		req.getRequestDispatcher("main.jsp").forward(req, resp);
		
	}
}
