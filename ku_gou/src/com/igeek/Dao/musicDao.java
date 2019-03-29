package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.igeek.pojo.Music;

/**
 * �赥���ݷ����࣬��װ�˷������ݵķ���
 */
public class musicDao {
	
	public Music findMusicById(int musicId){
		/**
		 * ��������
		 * �������
		 * ����������
		 * ִ�в�ѯ
		 * ���������
		 * �ر����ݿ�
		 */
		Music music = null;
		try {
			//��ȡ����
			Connection con = DaoUtil.getConnection();
			//����������
			PreparedStatement pstmt = con.prepareStatement("select * from music where musicId=?");
			//ע�����
			pstmt.setInt(1,musicId);
			//ִ�в�ѯ����ý����
			ResultSet rs = pstmt.executeQuery();
			//���������
			while(rs.next()){
				 music = new Music();
				 music.setMusicId(rs.getInt(1));
				 music.setMusicName(rs.getString(2));
				 music.setSinger(rs.getString(3));
				 music.setImage(rs.getString(4));
				 music.setSpecial(rs.getString(5));
				 music.setMusicPath(rs.getString(6));
				 music.setWords(rs.getString(7));
			}
			//�رս����
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return music;	
	}
	/**
	 * ���ݸ赥��Ų�ѯ�����б�
	 * @param allbumId
	 * @return
	 */
	public ArrayList<Music> findMusicsByAlbumId(int albumId){
		ArrayList<Music> list = new ArrayList<Music>();
		try {
			Connection con = DaoUtil.getConnection();
			//����SQL���
//			String sql = "select m.musicid,musicname,singer,image,special,musicpath,words from " +
//					"music m,album_music am where m.musicId=am.musicId and am.albumId=?";
			String sql = "select m.musicid,musicname,singer,image,special,musicpath,words from " +
					"music m inner join album_music am on m.musicid=am.musicid " +
					"where am.albumid=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, albumId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				//������������
				Music music = new Music();
				//��ÿ������д��music����
				music.setMusicId(rs.getInt(1));
				music.setMusicName(rs.getString(2));
				music.setSinger(rs.getString(3));
				music.setImage(rs.getString(4));
				music.setSpecial(rs.getString(5));
				music.setMusicPath(rs.getString(6));
				music.setWords(rs.getString(7));
				//��music�������������
				list.add(music);
			}
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
