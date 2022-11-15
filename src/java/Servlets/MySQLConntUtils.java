/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Adminstrator
 */
class MySQLConntUtils {

    public static Connection getMySQLConnection()throws  SQLException, ClassNotFoundException {
       String hostname="localhost";
       String dbName="websitehtttvt";
       String username="root";
       String password="12345";
       return getMySQLConnection(hostname,dbName,username,password);
    }

    private static Connection getMySQLConnection(String hostname, String dbName, String username, String password) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String connectionURL="jdbc:mysql://"+hostname+":3306/"+dbName;
        Connection conn=DriverManager.getConnection(connectionURL,username,password);
        return conn;
    }
    
}
