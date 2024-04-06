package com.nextstep.cakeconfections.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nexstep.cakeconfections.model.SignupDto;
import com.nextstep.cakeconfections.databaseconnection.DatabaseConnection;

public class SignupDaoImpl implements SignupDao{
	PreparedStatement ps=null;
	@Override
	public void insertUserDetails(SignupDto signupdto) {
		// TODO Auto-generated method stub
		String sql="insert into customer(Name, Email, Address,ContactNumber,Password,Repassword) values(?,?,?,?,?,?)";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, signupdto.getName());
			ps.setString(2, signupdto.getEmail());
			ps.setString(3, signupdto.getAddress());
			ps.setLong(4, signupdto.getContactNumber());
			ps.setString(5, signupdto.getPassword());
			ps.setString(6, signupdto.getRepassword());
			
			ps.executeUpdate();
		} catch  (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
	}
	@Override
	public boolean checkCustomer(SignupDto signupdto) {
		// TODO Auto-generated method stub
		boolean isCustomerExist=false;
		String sql="select * from customer where Email=? and Password=?";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ps.setString(1, signupdto.getEmail());
			ps.setString(2, signupdto.getPassword());
			
			ResultSet rs =ps.executeQuery();
			while(rs.next())
			{
				isCustomerExist=true;
			}
			} catch(Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		return isCustomerExist;
	}

}
