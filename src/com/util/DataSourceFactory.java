package com.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import javax.sql.DataSource;

import com.mysql.cj.jdbc.MysqlDataSource;




public class DataSourceFactory {
	
	public static DataSource getMySQLDataSource() {
		
		Properties props = new Properties();
		FileInputStream fis = null;
		MysqlDataSource mysqlDS = null;
		try {
			fis = new FileInputStream("config.properties");
			props.load(fis);
			mysqlDS = new MysqlDataSource();
			mysqlDS.setURL(props.getProperty("javabase.jdbc.url"));
			mysqlDS.setUser(props.getProperty("javabase.jdbc.username"));
			mysqlDS.setPassword(props.getProperty("javabase.jdbc.password"));
			return mysqlDS;
			
		}catch(IOException e) {
			e.printStackTrace();
			return null;
		}
		
	
	}
	
	

}
