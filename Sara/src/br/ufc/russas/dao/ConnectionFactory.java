package br.ufc.russas.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public Connection getConnection() {
		
		try {
			return DriverManager.getConnection("");
			
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
