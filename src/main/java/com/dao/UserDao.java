package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.User;
import com.util.ProjectUtil;

public class UserDao {
	public static void userSignup(User u)
	{
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "insert into user(email,password,usertype) values(?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getUsertype());
			pst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static boolean checkEmail(String email)
	{
		boolean flag = false;
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "select * from user where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;	
	}
	
	public static User checkLogin(String email, String password)
	{
		User u = null;
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "select * from user where email=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if(rs.next())						
			{
				u = new User();
				u.setId(rs.getInt("id"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				u.setUsertype(rs.getString("usertype"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

}
