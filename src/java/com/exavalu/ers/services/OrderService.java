/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.services;

import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.Orders;
import com.exavalu.ers.pojos.Products;
import com.exavalu.ers.pojos.User;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author soura
 */
public class OrderService {

    //private int orderId;
    public List reportOrder() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Orders> orderList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM orders";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

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

    public Orders fetchOrderDetails(int orderId) throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        Orders order = new Orders();
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT * FROM orders where orderId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("orderId = " + orderId);
            ps.setInt(1, orderId);
            System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {

                order.setProductId(rs.getInt("productId"));
                order.setUserId(rs.getInt("userId"));
                order.setStartDate(rs.getString("startDate"));
                order.setEndDate(rs.getString("endDate"));
                order.setQuantity(rs.getInt("quantity"));
                order.setOrderId(rs.getInt("orderId"));
            }
            return order;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    
    
      public int updateOrderDetails(int orderId, int productId,int userId, String startDate, 
            String endDate, int quantity) throws SQLException {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "update electronic_rental_system.orders set productId=?,userId=?,startDate=?,endDate=?,quantity=? where orderId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(6,orderId);
            ps.setInt(1, productId);
            ps.setInt(2, userId);
            ps.setString(3, startDate);
            ps.setString(4, endDate);
            ps.setInt(5, quantity);
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
    
      
      
      public int deleteOrderDetails(int orderId) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "DELETE FROM orders WHERE orderId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
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
      
      
      
      
    public List CustomerOrderList() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
       ArrayList orderList2 = new ArrayList<>();
        try {
            String sql = "SELECT  products.productName,products.productPrice,Orders.startDate, Orders.endDate\n" +
"FROM Orders\n" +
"INNER JOIN products ON Orders.productId=products.productId";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Orders order = new Orders();
                
               
               order.setProductName(rs.getString("productName"));
               order.setProductPrice(rs.getInt("productPrice"));
               order.setStartDate(rs.getString("startDate"));
                order.setEndDate(rs.getString("endDate"));
                
               

//                user.setUserName(rs.getString("userName"));
//                user.setPassword(rs.getString("password"));
//                user.setFirstName(rs.getString("firstName"));
//                us  Userer.setLastName(rs.getString("lastName"));
//                user.setEmail(rs.getString("email"));
//                user.setPhoneNumber(rs.getString("phoneNumber"));
                orderList2.add(order);
            }
            return orderList2;
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
