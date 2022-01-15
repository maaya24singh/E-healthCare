package com.musk.web.dao;
import java.sql.*;
import com.musk.web.modal.Data;

public class DataDao {
	 public Data checkLogin(String adhaar, String password) throws SQLException,
     ClassNotFoundException {
          String jdbcURL = "jdbc:mysql://localhost:3306/healthcare";
          String dbUser = "root";
          String dbPassword = "4444";

          Class.forName("com.mysql.jdbc.Driver");
          Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
          String sql = "SELECT * FROM register WHERE adhaar_no = ? and paswrd = ?";
          PreparedStatement statement = connection.prepareStatement(sql);
          statement.setString(1, adhaar);
          statement.setString(2, password);
         
          ResultSet result = statement.executeQuery();
          Data data = null;
          if (result.next()) {
        	  
        	  data = new Data();
        	  data.setFrst_name(result.getString("frst_name"));
        	  data.setLast_name(result.getString("last_name"));
        	  data.setBirthdate(result.getString("birthdate"));
        	  data.setGender(result.getString("gender"));
        	  data.setAdhaar_No(result.getString("Adhaar_No"));
        	  data.setEmail(result.getString("email"));
        	  data.setBloodgrp(result.getString("bloodgrp"));
        	  data.setDisease(result.getString("disease"));
        	  data.setVaccinate(result.getString("vaccinate"));
          }

          connection.close();

          return data;
	 }
}
