package fr.solutec.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author esic
 */
public class AccessBD {
    protected static final String DRIVER_NAME="com.mysql.jdbc.Driver";
    protected static final String DB_NAME="banque_root";
    protected static final String URL="jdbc:mysql://localhost/"+ DB_NAME;
    protected static final String USER="root";
    protected static final String PASSWORD="";
    
    static {
        try {
            Class .forName(DRIVER_NAME).newInstance();
            System.out.println("driver loaded.....");
        } catch (Exception e) {
            System.out.println("ex acc bd"+e.getMessage());
        }
        
    }
    public static Connection getConnection() throws SQLException{
        
        return DriverManager.getConnection(URL, USER,PASSWORD);
        
    }
            
}