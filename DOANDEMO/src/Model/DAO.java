package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAO {
	 Connection con = null;  
     Statement stmt = null;  
     ResultSet rs = null; 
     String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
             "databaseName=thitracnghiem;user=kiendt;password=123";
     public DAO() {
    	 try {
    	 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
         con = DriverManager.getConnection(connectionUrl); 
         }
    	 catch(Exception ex) {
    		 ex.printStackTrace();
    	 }
     }
     public ResultSet myExec (String query) {
    	 try {
    	 PreparedStatement stm=con.prepareStatement(query);
    	 rs=stm.executeQuery();
    	 }catch(SQLException e){
    		 
    	 }
    	 return rs;
     }
     public int myupdateExec (String query) {
    	 int i=0;
    	 try {
    	 PreparedStatement stm=con.prepareStatement(query);
    	 i=stm.executeUpdate();
    	 }catch(SQLException e){
    		 e.printStackTrace();
    	 }
    	 return i;
     }

}
