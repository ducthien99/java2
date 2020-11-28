package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//b1: xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//b2: ket noi
		String url="";
		cn=DriverManager.getConnection("jdbc:sqlserver://DESKTOP-FF1278R\\SQLEXPRESS:1433;databaseName=QLsach;user=sa; password=123");
		System.out.println("da ket noi");
	}

}
