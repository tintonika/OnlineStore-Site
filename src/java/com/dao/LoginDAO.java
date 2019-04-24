/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.connection.connectionDB;
import com.model.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rick
 */
public class LoginDAO {
     PreparedStatement preparedStatement = null;
    Statement stmt = null;
    Connection con = null;
    ResultSet rs = null;
   public boolean verification(String nom, String pass) throws SQLException {
        boolean result = false;
        String psw = null;
        PreparedStatement preparedStatement = null;
        Connection con = null;
        
//        if(nom == null || pass==null){
//            return false;
//        }
        try {
        con = connectionDB.createConnection();
        String query = "SELECT Password from user WHERE Login = '"+ nom +"'";
        preparedStatement = con.prepareStatement(query); 

        ResultSet rs = preparedStatement.executeQuery();
         
        while (rs.next()) {
               psw = rs.getString("PASSWORD");
        }
        if(psw!=null){
            if (psw.equals(pass))
                   result = true;
        }
        } catch (SQLException e) {

            System.out.println(e.getMessage());

        }
        finally {

            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
        } 
    public void insertUser( Login newlogin) throws SQLException{
        try {
         con = connectionDB.createConnection();   
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        
        stmt = con.createStatement();
          
        
        String queryInsert = "INSERT INTO user(LOGIN,PASSWORD,NAME,ADRESSE,TELEPHONE) "
                + "VALUES('"+ newlogin.getLogin() +"','"+ newlogin.getPassword()+"','"+ newlogin.getName()+"','"+ newlogin.getAdresse()+"','"+ newlogin.getTelephone()+"')";
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
        
         public void updateUser( Login newlogin) throws SQLException{
        try {
         con = connectionDB.createConnection();   
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        
        stmt = con.createStatement();    
     
        
        String queryInsert = "update user set "
                + "LOGIN        ='"+ newlogin.getLogin()    +"',"
                + "PASSWORD ='"+ newlogin.getPassword() +"',"
                + "NAME       ='"+ newlogin.getName()       +"',"
                + "ADRESSE         ='"+ newlogin.getAdresse()        +"',"
                + "TELEPHONE      ='"+ newlogin.getTelephone()      +"'";
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
