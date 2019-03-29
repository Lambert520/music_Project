package com.igeek.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.batch.Main;

import com.igeek.Dao.albumDao;
import com.igeek.Dao.musicDao;
import com.igeek.pojo.Album;
import com.igeek.pojo.Music;

/**
 * 查询歌单信息
 * @author Administrator
 *
 */
public class SearchAllbumServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		albumDao albumDao = new albumDao();
		musicDao musicDao = new musicDao();
		//获取歌单的编号
		int albumId = Integer.parseInt(req.getParameter("albumId"));
		//根据编号查询歌单信息
		Album allbum = albumDao.findAlbumById(albumId);
		//根据编号查询歌单中的歌曲信息
		ArrayList<Music> musicList = musicDao.findMusicsByAlbumId(albumId);
		//将查询的歌单信息传递至页面
		req.setAttribute("allbum", allbum);
		req.setAttribute("musicList", musicList);
		
		//跳转页面
		req.getRequestDispatcher("allbum.jsp").forward(req, resp);
	}
}
