package loginmodulespackdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import h1.DBUtil;

public class checkdate {
	    String sql="select * from register where date1=? and shoptype=?" ;
	public boolean  check(String date,String shoptype)
	{
		
			try
			{
			Connection connection = DBUtil.getDataSource().getConnection();
			PreparedStatement st= connection.prepareStatement(sql);
			st.setString(1, date);
			st.setString(2, shoptype);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
			
				return true;
			}
			
			}
			catch(Exception e) 
			{
				e.printStackTrace();
			}
			
			return false;
			
		}
}