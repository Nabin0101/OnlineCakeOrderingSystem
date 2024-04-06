package com.nextstep.cakeconfections.dao;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.Part;

import com.nexstep.cakeconfections.model.VenderDto;
import com.nextstep.cakeconfections.databaseconnection.DatabaseConnection;

public class RegisterDaoImpl implements RegisterDao {
	PreparedStatement ps=null;
	@Override
	public void insertProductDetails(VenderDto venderdto) {
		// TODO Auto-generated method stub
		
		String sql="insert into product(name,shopname,pannumber,address,contactNumber, image,price,productName,category) values(?,?,?,?,?,?,?,?,?)";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql)	;
			ps.setString(1, venderdto.getName());
			ps.setString(2, venderdto.getShopName());
			ps.setString(3, venderdto.getPanNumber());
			ps.setString(4, venderdto.getAddress());
			ps.setLong(5, venderdto.getContactNumber());
			ps.setBlob(6, venderdto.getImage());
			ps.setInt(7, venderdto.getPrice());
			ps.setString(8, venderdto.getProductName());
			ps.setString(9, venderdto.getCategory());
		
			
		} catch  (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	@Override
	public VenderDto getProductDetails(int id) {
		// TODO Auto-generated method stub
		
		String sql="Select from product where id=?";
		try {
			ps=DatabaseConnection.getConnection().prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next())
			{
				VenderDto venderdto = new VenderDto();
				venderdto.setName(rs.getString(id));
			}
		} catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	

}
