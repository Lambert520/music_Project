package com.igeek.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoUtil {
	/**
	 * ��̬�飬���ڱ�д����ֻ����һ�εĳ���
	 * @return
	 */
	static{
		try {
			//��������
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * ��̬����������ֱ�ӷ��ʣ����ʵ���ʽ��������
	 * @return
	 */
	public static Connection getConnection(){
		Connection con = null;
		
		try {
			//�������
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/files", "root", "1014");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * �ر����ݿ����
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
