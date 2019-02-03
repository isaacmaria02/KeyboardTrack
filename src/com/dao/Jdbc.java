package com.dao;
import java.util.*;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.model.LogData;

import java.security.spec.PSSParameterSpec;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Jdbc {
	Connection con;
	PreparedStatement ps,ps1,ps2;
	int i;
	public Connection myConnection(){
		//1.load driver
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/keyboardtrack","root","");  
			System.out.println("Connection to db..");
			
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("catch connection..");
		} catch (SQLException e) {
			System.out.println("catch connection..2");
			e.printStackTrace();
		}
		
		
		
		return con;
	}
	
	
	public int saveData(LogData ld)
	{
		int i=0;
		try {
		con = myConnection();
		
		
		
       System.out.println(ld.toString());
		
		
		ps=con.prepareStatement("insert into logs(name,accuracy,time,mood) values(?,?,?,?)");
        ps.setString(1, ld.getName());
        ps.setFloat(2, ld.getAccuracy());
        ps.setInt(3, ld.getSeconds());
        ps.setString(4, ld.getMood());
        
        

		i = ps.executeUpdate();
		con.close();
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Exception occured");
		}
		
		return i;
	}
	
}




