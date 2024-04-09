/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package attendancems_with_prepared22;

import java.sql.*;
/**
 *
 * @author Iqbal-Asi
 */
public class ConnectClass {
    
    //Class Global area 
    Connection xc;
    Statement st;        
    
    //ConnectClass Constructor
    public ConnectClass() {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            /**
             * ODBC Name = attend
             */
            
            xc = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance", "root", "");
            
            st = xc.createStatement();
        }
        catch(Exception ex) {
             System.out.println(ex.toString());
        }
    }
}
