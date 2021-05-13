package DBConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

public class ConnectionPool {

	public static Connection getDBCP() {
		
		Connection conn = null;
		
		
		Boolean connect = false;
		
	try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/studydb");
		
			conn = ds.getConnection();
			connect = true;
			
			connect = true;
		
	}catch(Exception e) {
		connect=false;
		e.printStackTrace();
	}
	
	if(connect) {
		System.out.println("연결o");
	}else {
		System.out.println("연결x");
	}
	return conn;
   }
}
