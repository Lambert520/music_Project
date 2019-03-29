package com.igeek.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableServer.POAPackage.WrongAdapter; 

import com.igeek.Dao.musicDao;
import com.igeek.pojo.Music;

/**
 * 播放歌曲
 * @author Administrator
 *
 */
public class PlayMusicServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		musicDao musicDao = new musicDao();
		//获取要播放的歌曲编号
		int musicId = Integer.parseInt(req.getParameter("musicId"));
		//根据编号查询歌曲信息
		Music music = musicDao.findMusicById(musicId);
		//获取歌词
		String words = music.getWords();
		//将歌曲中歌词的\n换行转换成<br>标签
		words = words.replace("\r\n", "<br>");
		System.out.println(words);
		music.setWords(words);
		//传递歌曲信息至页面
		req.setAttribute("music", music);
		//跳转页面
		req.getRequestDispatcher("music.jsp").forward(req, resp);
	}
}
