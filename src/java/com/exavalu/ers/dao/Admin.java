/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.Orders;
/**
 *
 *
 */
public class Admin {

    

    public List report() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Orders> orderList = new ArrayList<>();
        try {
            String sql = "SELECT Orders.OrderID, User.UserName, products.productId\n" +
"FROM Orders\n" +
"INNER JOIN Customers\n" +
"ON Orders.CustomerID=Customers.CustomerID;";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
//                
//                private int orderId;
//    private int productId;
//    private int userId;
//    private String startDate;
//    private String endDate;
//    private int quantity;
                
                
                
                
                
                
                
                
                

               Orders order = new Orders();
               order.setOrderId(rs.getInt("orderId"));
               order.setProductId(rs.getInt("productId"));
               order.setUserId(rs.getInt("userId"));
               order.setStartDate(rs.getString("startDate"));
               order.setEndDate(rs.getString("endDate"));
               order.setQuantity(rs.getInt("quantity"));
               
               
               
//                user.setUserName(rs.getString("userName"));
//                user.setPassword(rs.getString("password"));
//                user.setFirstName(rs.getString("firstName"));
//                us  Userer.setLastName(rs.getString("lastName"));
//                user.setEmail(rs.getString("email"));
//                user.setPhoneNumber(rs.getString("phoneNumber"));

                orderList.add(order);
            }
            return orderList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
//
//    public User fetchUserDetails(String userName) throws SQLException, Exception {
//        ResultSet rs = null;
//        Connection con = null;
//        User user = new User();
//        try {
//            con = ConnectionManager.getConnection();
//            String sql = "SELECT userName, password, firstName, lastName, "
//                    + "email, phoneNumber FROM users WHERE userName=?";
//            PreparedStatement ps = con.prepareStatement(sql);
//            System.out.println("userName = " + userName);
//            ps.setString(1, userName);
//            System.out.println("Select SQL = " + ps);
//
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                
//                user.setUserName(rs.getString("userName"));
//                user.setPassword(rs.getString("password"));
//                user.setFirstName(rs.getString("firstName"));
//                user.setLastName(rs.getString("lastName"));
//                user.setEmail(rs.getString("email"));
//                user.setPhoneNumber(rs.getString("phoneNumber"));
//
//                
//            }
//            return user;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }

   

}
