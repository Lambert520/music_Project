package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.igeek.pojo.Album;

/**
 * �赥���ݷ����࣬��װ�˷������ݵķ���
 */
public class albumDao {
	/**
	 * ���ݸ赥��Ų�ѯ�赥��Ϣ
	 * @throws Exception 
	 * 
	 */
	public Album findAlbumById(int albumId){
		/**
		 * ��������
		 * �������
		 * ����������
		 * ִ�в�ѯ
		 * ���������
		 * �ر����ݿ�
		 */
		Album album = null;
		Connection con = DaoUtil.getConnection();
		try {
			//����������
			PreparedStatement pstmt = con.prepareStatement("select * from album where albumId=?");
			//Ϊռλ��ע�����
			pstmt.setInt(1,albumId);
			//ִ�в�ѯ
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				 album = new Album();
				 album.setAlbumId(rs.getInt(1));
				 album.setAlbumName(rs.getString(2));
				 album.setImage(rs.getString(3));
				 album.setClickCount(rs.getLong(4));
				 album.setCreateUser(rs.getString(5));
				 album.setModifyTime(rs.getDate(6));
				 album.setSummary(rs.getString(7));
			}
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return album;	
	}
	/**
	 * ��ѯǰ5���赥��Ϣ
	 * @return
	 */
	public ArrayList<Album> findTopFiveAllbums(){
		ArrayList<Album> list = new ArrayList<Album>();
		try {
			//���ݷ���
			Connection con = DaoUtil.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from album limit 0,5");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				//ÿһ�����ݼ�һ���赥����
				//�����赥����
				Album album = new Album();
				//����ѯ������д��赥����
				//���赥���д��allbum����
				album.setAlbumId(rs.getInt(1));
				//д��赥����
				album.setAlbumName(rs.getString(2));
				//д��赥ͼƬ
				album.setImage(rs.getString(3));
				//д������
				album.setClickCount(rs.getLong(4));
				//д�봴����
				album.setCreateUser(rs.getString(5));
				//д��赥���޸�ʱ��
				album.setModifyTime(rs.getTimestamp(6));
				//д��赥���
				album.setSummary(rs.getString(7));
				//���赥�������������
				list.add(album);
			}
			//�ر����ݿ�
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
