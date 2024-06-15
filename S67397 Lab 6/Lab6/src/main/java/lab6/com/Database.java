/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import lab6.com.Marathon;

/**
 *  Bean   : Database.java
 *  Author : Nur Atirah s67397
 *  Date   : 25/05/2024
 */


public class Database {
    private static Connection myConnection = null;
    private static String myURL = "jdbc:mysql://localhost/csm3023";
    private int result = 0;
    
    public static Connection getConnection () throws ClassNotFoundException{
        
        if (myConnection != null){
            return myConnection;
        }
        else try {
            Class.forName("com.mysql.jdbc.Driver");
            myConnection = DriverManager.getConnection(myURL,"root","admin");
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return myConnection;
    }
    
    public void closeConnection() throws ClassNotFoundException{
        try{
            myConnection.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    
}
