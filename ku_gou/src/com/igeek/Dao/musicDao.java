package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.igeek.pojo.Music;

/**
 * 歌单数据访问类，封装了访问数据的方法
 */
public class musicDao {
	
	public Music findMusicById(int musicId){
		/**
		 * 加载驱动
		 * 获得连接
		 * 创建处理器
		 * 执行查询
		 * 遍历结果集
		 * 关闭数据库
		 */
		Music music = null;
		try {
			//获取连接
			Connection con = DaoUtil.getConnection();
			//创建处理器
			PreparedStatement pstmt = con.prepareStatement("select * from music where musicId=?");
			//注入参数
			pstmt.setInt(1,musicId);
			//执行查询，获得结果集
			ResultSet rs = pstmt.executeQuery();
			//遍历结果集
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
			//关闭结果集
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return music;	
	}
	/**
	 * 根据歌单编号查询歌曲列表
	 * @param allbumId
	 * @return
	 */
	public ArrayList<Music> findMusicsByAlbumId(int albumId){
		ArrayList<Music> list = new ArrayList<Music>();
		try {
			Connection con = DaoUtil.getConnection();
			//定义SQL语句
//			String sql = "select m.musicid,musicname,singer,image,special,musicpath,words from " +
//					"music m,album_music am where m.musicId=am.musicId and am.albumId=?";
			String sql = "select m.musicid,musicname,singer,image,special,musicpath,words from " +
					"music m inner join album_music am on m.musicid=am.musicid " +
					"where am.albumid=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, albumId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				//创建歌曲对象
				Music music = new Music();
				//将每行数据写入music对象
				music.setMusicId(rs.getInt(1));
				music.setMusicName(rs.getString(2));
				music.setSinger(rs.getString(3));
				music.setImage(rs.getString(4));
				music.setSpecial(rs.getString(5));
				music.setMusicPath(rs.getString(6));
				music.setWords(rs.getString(7));
				//将music对象添加至集合
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
