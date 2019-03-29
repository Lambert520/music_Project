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
 * ���Ÿ���
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
		//��ȡҪ���ŵĸ������
		int musicId = Integer.parseInt(req.getParameter("musicId"));
		//���ݱ�Ų�ѯ������Ϣ
		Music music = musicDao.findMusicById(musicId);
		//��ȡ���
		String words = music.getWords();
		//�������и�ʵ�\n����ת����<br>��ǩ
		words = words.replace("\r\n", "<br>");
		System.out.println(words);
		music.setWords(words);
		//���ݸ�����Ϣ��ҳ��
		req.setAttribute("music", music);
		//��תҳ��
		req.getRequestDispatcher("music.jsp").forward(req, resp);
	}
}
