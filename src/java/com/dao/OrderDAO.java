
package com.dao;

import com.connection.connectionDB;
import com.model.Login;
import com.model.Orders;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class OrderDAO {
      
    PreparedStatement preparedStatement = null;
    Statement stmt = null;
    Connection con = null;
    ResultSet rs = null;
    
    
     public void insertOrder( Orders order) throws SQLException{
        try {
         con = connectionDB.createConnection();   
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);        
        stmt = con.createStatement();          
        
        String queryInsert = "INSERT INTO orders(Date,Id_user,Id_article,Qty,Price) "
                + "VALUES('"+ order.getDATE() +"','"+ order.getID_USER() +"','"+ order.getID_ARTICLE()+"','"+ order.getQTY()+"','"+order.getPRICE()+"')";
        stmt.executeUpdate(queryInsert);
        }
        catch(SQLException e){
             System.out.println(e.getMessage());
        
        } finally {
            if (stmt != null) {
                stmt.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
}
