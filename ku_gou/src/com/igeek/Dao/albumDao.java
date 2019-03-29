package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.igeek.pojo.Album;

/**
 * 歌单数据访问类，封装了访问数据的方法
 */
public class albumDao {
	/**
	 * 根据歌单编号查询歌单信息
	 * @throws Exception 
	 * 
	 */
	public Album findAlbumById(int albumId){
		/**
		 * 加载驱动
		 * 获得连接
		 * 创建处理器
		 * 执行查询
		 * 遍历结果集
		 * 关闭数据库
		 */
		Album album = null;
		Connection con = DaoUtil.getConnection();
		try {
			//创建处理器
			PreparedStatement pstmt = con.prepareStatement("select * from album where albumId=?");
			//为占位符注入参数
			pstmt.setInt(1,albumId);
			//执行查询
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
	 * 查询前5个歌单信息
	 * @return
	 */
	public ArrayList<Album> findTopFiveAllbums(){
		ArrayList<Album> list = new ArrayList<Album>();
		try {
			//数据访问
			Connection con = DaoUtil.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from album limit 0,5");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				//每一行数据即一个歌单对象
				//创建歌单对象
				Album album = new Album();
				//将查询的数据写入歌单对象
				//将歌单编号写入allbum对象
				album.setAlbumId(rs.getInt(1));
				//写入歌单名称
				album.setAlbumName(rs.getString(2));
				//写入歌单图片
				album.setImage(rs.getString(3));
				//写入点击数
				album.setClickCount(rs.getLong(4));
				//写入创建人
				album.setCreateUser(rs.getString(5));
				//写入歌单的修改时间
				album.setModifyTime(rs.getTimestamp(6));
				//写入歌单简介
				album.setSummary(rs.getString(7));
				//将歌单对象添加至集合
				list.add(album);
			}
			//关闭数据库
			DaoUtil.close(rs, pstmt, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
