/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.services;

import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.User;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author indra
 */
public class UserService extends ActionSupport{
     public static User validateLoginCredentials(User user) throws ClassNotFoundException, IOException
    {
        try {
            boolean valid = true;
            String userEmail= user.getUserEmail();
            String password= user.getPassword();
            
            // we need to connect to data base or other system
            //and validate user
            //with this username and password.
            Connection con = ConnectionManager.getConnection();
            String sql="SELECT * FROM user WHERE userEmail=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, userEmail);
            ps.setString(2, password);
            
            ResultSet rs=ps.executeQuery();
            
            
            if(rs.next())
            {
                user.setUserName(rs.getString("userName"));
                
                user.setUserMobileNo(rs.getString("userMobileNo"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setPassword(rs.getString("password"));
                user.setCity(rs.getString("city"));
                user.setCountry(rs.getString("country"));
                user.setStatus(rs.getInt("status"));
                user.setRoleId(rs.getInt("roleId"));
                user.setValidUser(valid);
            }
            
            else
            {
                valid = false;
                user.setValidUser(valid);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
}
