package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.bean.Data;
import com.util.ProjectUtil;

public class DataDao {
	public static void addData(Data d)
	{
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "insert into data(uid,name,fname,ufn,mobile,birth_certi,aadhar_no) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, d.getUid());
			pst.setString(2, d.getName());
			pst.setString(3, d.getFname());
			pst.setInt(4, d.getUfn());
			pst.setString(5, d.getMobile());
			pst.setString(6, d.getBirth_certi());
			pst.setString(7, d.getAadhar_no());
			pst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void addDeath(Data d)
	{
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "UPDATE data SET death_certi=? WHERE name = ? and fname=? and ufn=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, d.getDeath_certi());
			pst.setString(2, d.getName());
			pst.setString(3, d.getFname());
			pst.setInt(4, d.getUfn());
			pst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Data> Getname(String fname, int ufn)
	{
		List<Data> name = new ArrayList<Data>();
		try {
			Connection conn = ProjectUtil.createConnection();
			String sql = "SELECT name,time from data WHERE fname=? and ufn=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, fname);
			pst.setInt(2, ufn);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				Data data = new Data();
				data.setName(rs.getString("name"));
				data.setTime(rs.getDate("time"));
				name.add(data);
			}
			for(int i=0; i<name.size(); i++)
			{
				System.out.println(name.get(i));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return name;
	}
}

