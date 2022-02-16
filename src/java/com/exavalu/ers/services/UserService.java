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
import java.util.ArrayList;
import java.util.List;
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
            String sql="SELECT * FROM user WHERE userEmail=? AND password=? AND status=1";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, userEmail);
            ps.setString(2, password);
            
            ResultSet rs=ps.executeQuery();
            
            
            if(rs.next())
            {
                user.setUserName(rs.getString("userName"));
                user.setUserId(rs.getInt("userId"));
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

    public static List<Integer> productNameType() {
         ResultSet rs = null;
        Connection con = null;
        List<Integer> typeList = new ArrayList<>();
        try {
            String sql = "SELECT productName, count(productName) as items FROM products GROUP BY productName";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

               
                
                //Products.setProductImage(rs.getString("productImage"));

                typeList.add(rs.getInt("items"));
            }
            return typeList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    

    public int addUser(String userName,String userDOB, String userMobileNo, String userEmail, String password, String city, String country) 
    throws Exception{
        int i = 0;
        Connection con = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "INSERT INTO user(userName,userMobileNo,userEmail,password,city,country,status,roleId,userDOB) VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, userName);
            ps.setString(2, userMobileNo);
            ps.setString(3, userEmail);
            ps.setString(4, password);
            ps.setString(5, city);
            ps.setString(6, country);
            ps.setInt(7, 1);
            ps.setInt(8, 2);
            ps.setString(9, userDOB);
            System.out.println("SQL for insert="+ps);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return i;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    public static List report() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<User> userList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM user";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                User user = new User();
                //user.setUserName(rs.getString("userName"));
                user.setUserId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setUserDOB(rs.getString("userDOB"));
                user.setUserMobileNo(rs.getString("userMobileNo"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setPassword(rs.getString("password"));
                user.setCity(rs.getString("city"));
                user.setStatus(rs.getInt("status"));
                user.setRoleId(rs.getInt("roleId"));
                user.setCountry(rs.getString("country"));
                //user.setEmail(rs.getString("email"));
                //user.setPhoneNumber(rs.getString("phoneNumber"));

                userList.add(user);
            }
            return userList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public User fetchUserDetails(int userId) throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        User user = new User();
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT  * FROM user WHERE userId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            //System.out.println("userName = " + userName);
            ps.setInt(1, userId);
            //System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {

                user.setUserName(rs.getString("userName"));
                user.setUserDOB(rs.getString("userDOB"));
                user.setPassword(rs.getString("password"));
                user.setUserId(rs.getInt("userId"));
                user.setUserMobileNo(rs.getString("userMobileNo"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setCity(rs.getString("city"));
                user.setCountry(rs.getString("country"));
                user.setStatus(rs.getInt("status"));
                user.setRoleId(rs.getInt("roleId"));

            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int updateUserDetails(int userId, String userName,String userDOB, String password, String userMobileNo, String userEmail,
            String city, String country, int status, int roleId) throws SQLException, Exception {

        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE user SET userName = ?, userMobileNo = ?, userEmail = ?, password = ?, city = ?, country = ?, status = ?,roleId = ?,userDOB = ? WHERE userId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            //
            ps.setString(1, userName);
            ps.setString(2, userMobileNo);
            ps.setString(3, userEmail);
            ps.setString(4, password);
            ps.setString(5, city);
            ps.setString(6, country);
            ps.setInt(7, status);
            ps.setInt(8, roleId);
            ps.setString(9, userDOB);
            ps.setInt(10, userId);

            System.out.println("Select SQL = " + ps);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    public int deleteUserDetails(int userId,int status) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        if(status==1){
            status=0;
        }else{
            status=1;
        }
        try {
            String sql = "Update user SET status = ? WHERE userId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, userId);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
     public static List showType() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Integer> itemsList = new ArrayList<>();
        try {
            String sql = "SELECT productMake, count(productMake) as items FROM products GROUP BY productMake";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

               
                
                //Products.setProductImage(rs.getString("productImage"));

                itemsList.add(rs.getInt("items"));
            }
            return itemsList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }

    }
     
     public  User fetchAccountDetails(String userEmail, String userDOB) throws SQLException {
         
         ResultSet rs = null;
        Connection con = null;
        User user = new User();
        try {
            con = ConnectionManager.getConnection();
            String sql="SELECT * FROM user WHERE userEmail=? AND userDOB=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, userEmail);
            ps.setString(2, userDOB);

            rs = ps.executeQuery();
            if (rs.next()) {

                user.setUserName(rs.getString("userName"));
                user.setUserDOB(rs.getString("userDOB"));
                user.setPassword(rs.getString("password"));
                user.setUserId(rs.getInt("userId"));
                user.setUserMobileNo(rs.getString("userMobileNo"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setCity(rs.getString("city"));
                user.setCountry(rs.getString("country"));
                user.setStatus(rs.getInt("status"));
                user.setRoleId(rs.getInt("roleId"));

            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

//    public int fetchAccountDetails(String userEmail, String userDOB) throws SQLException {
//        ResultSet rs = null;
//        Connection con = null;
//        List<User> userList = new ArrayList<>();
//        User user = new User();
//        
//        try {
//            con = ConnectionManager.getConnection();
//            String sql="SELECT * FROM user WHERE userEmail=? AND userDOB=?";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, userEmail);
//            ps.setString(2, userDOB);
//            
//           rs=ps.executeQuery();
//           if(rs.next()){
//               user.setUserId(rs.getInt("userId"));
//               user.setUserName(rs.getString("userName"));
//               user.setUserEmail(rs.getString("userEmail"));
//               user.setUserDOB(rs.getString("userDOB"));
//               
//               userList.add(user);
//               return 1;
//           }
//           
//           
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//        return 0;
//    }

    public int updatePassword(String userEmail, String password) throws SQLException, Exception{
         Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "Update user SET password = ? WHERE userEmail=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, userEmail);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public User fetchAccountProfile(int userId) throws SQLException {
        ResultSet rs = null;
        Connection con = null;
        User user = new User();
        try {
            con = ConnectionManager.getConnection();
            String sql="SELECT * FROM user WHERE userId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            if (rs.next()) {

                user.setUserName(rs.getString("userName"));
                user.setUserDOB(rs.getString("userDOB"));
                user.setPassword(rs.getString("password"));
                user.setUserId(rs.getInt("userId"));
                user.setUserMobileNo(rs.getString("userMobileNo"));
                user.setUserEmail(rs.getString("userEmail"));
                user.setCity(rs.getString("city"));
                user.setCountry(rs.getString("country"));
                user.setStatus(rs.getInt("status"));
                user.setRoleId(rs.getInt("roleId"));

            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

   

    
}
