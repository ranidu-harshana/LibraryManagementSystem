/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.DriverManager;
import java.sql.Connection;
/**
 *
 * @author ranid
 */
public class DBConnection {
    public Connection dbConnection () {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_db", "root", "");
            
            return con;
        } catch (Exception e) {
            System.out.println("ERROR " + e.getMessage());
        }
        
        return null;
    }
}
