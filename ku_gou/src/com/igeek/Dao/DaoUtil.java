package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoUtil {
	/**
	 * 静态块，用于编写代码只运行一次的场合
	 * @return
	 */
	static{
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 静态方法，运行直接访问（访问的形式，类名）
	 * @return
	 */
	public static Connection getConnection(){
		Connection con = null;
		
		try {
			//获得连接
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/files", "root", "1014");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * 关闭数据库对象
	 * @param rs
	 * @param pstmt
	 * @param con
	 */
	public static void close(ResultSet rs,PreparedStatement pstmt,Connection con){
		try {
			if(rs !=null){
				rs.close();
			}
			if(pstmt !=null){
				pstmt.close();
			}
			if(con !=null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
