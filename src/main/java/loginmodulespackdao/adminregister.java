package loginmodulespackdao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import h1.DBUtil;

public class adminregister {
	String sql1="insert into register1 values(?,?,?,?)";
	
	
	
	
	public int  insert1(String name,String Email,String price,String shop)  
	{
		
		try
		{
			
		Connection connection = DBUtil.getDataSource().getConnection();
		PreparedStatement st1= connection.prepareStatement(sql1);
		
		st1.setString(1,name);
		st1.setString(2,Email);
		st1.setString(3,price);
		st1.setString(4,shop);
		
		int n=st1.executeUpdate();
		
		System.out.println("inside i");
		return n;
		}
		catch(Exception e)
		{
			
		}
		System.out.println("yes3");
		return 0 ;
		
	}

}
