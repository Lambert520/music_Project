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
 * ��ѯ�赥��Ϣ
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
		//��ȡ�赥�ı��
		int albumId = Integer.parseInt(req.getParameter("albumId"));
		//���ݱ�Ų�ѯ�赥��Ϣ
		Album allbum = albumDao.findAlbumById(albumId);
		//���ݱ�Ų�ѯ�赥�еĸ�����Ϣ
		ArrayList<Music> musicList = musicDao.findMusicsByAlbumId(albumId);
		//����ѯ�ĸ赥��Ϣ������ҳ��
		req.setAttribute("allbum", allbum);
		req.setAttribute("musicList", musicList);
		
		//��תҳ��
		req.getRequestDispatcher("allbum.jsp").forward(req, resp);
	}
}
