package h1;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;



public class DBUtil {
	
	
	public  static final String DB_USERNAME="root";
	public  static final String DB_PASSWORD="skcet123";
	public static final String DB_URL ="jdbc:mysql://localhost:3306/bala?allowPublicKeyRetrieval=true&useSSL=false";
	public static final String DB_DRIVER_CLASS="com.mysql.jdbc.Driver";
	
	//private static Properties properties = null;
	public static HikariDataSource dataSource;
	static{ 
		try {
			//properties = new Properties();
			//properties.load(new FileInputStream("src/main/java/database.properties"));
			
			dataSource = new HikariDataSource();
			dataSource.setDriverClassName(DB_DRIVER_CLASS);
			dataSource.setJdbcUrl(DB_URL);
			dataSource.setUsername(DB_USERNAME);
			dataSource.setPassword(DB_PASSWORD);
			
			dataSource.setMinimumIdle(100);
			dataSource.setMaximumPoolSize(2000);//The maximum number of connections, idle or busy, that can be present in the pool.
			dataSource.setAutoCommit(true);
			dataSource.setLoginTimeout(3);
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static DataSource getDataSource(){
		return dataSource;
	}

	
	}
	
	
	

