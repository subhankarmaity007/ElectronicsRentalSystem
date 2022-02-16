/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.services;

import com.exavalu.ers.actions.UserAction;
import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.Orders;
import com.exavalu.ers.pojos.Products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author soura
 */
public class OrderService extends UserAction {

    //private int orderId;
    public List reportOrder() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Orders> orderList = new ArrayList<>();
        try {
            String sql = "SELECT  orderId,productName,products.productId,user.userId,userName,startDate, endDate,quantity FROM "
                    + "((orders INNER JOIN user ON orders.userId = user.userId) INNER JOIN products ON "
                    + "orders.productId = products.productId);";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Orders order = new Orders();
                order.setOrderId(rs.getInt("orderId"));
                order.setProductName(rs.getString("productName"));
                order.setProductId(rs.getInt("productId"));
                order.setUserId(rs.getInt("userId"));
                order.setUserName(rs.getString("userName"));
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

    public int updateOrderDetails(int orderId, int productId, int userId, String startDate,
            String endDate, int quantity) throws SQLException {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "update electronic_rental_system.orders set productId=?,userId=?,startDate=?,endDate=?,quantity=? where orderId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(6, orderId);
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
            String sql = "Update orders SET status = 0 WHERE orderId=?";
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
            String sql = "SELECT  user.userName,orders.orderId,products.productName,products.productPrice, orders.quantity,orders.startDate, orders.endDate FROM ((orders INNER JOIN user ON orders.userId = user.userId) INNER JOIN products ON orders.productId = products.productId);";

            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Orders order = new Orders();
                order.setUserName(rs.getString("userName"));
                order.setOrderId(rs.getInt("orderId"));
                order.setProductName(rs.getString("productName"));
                order.setProductPrice(rs.getInt("productPrice"));
                order.setQuantity(rs.getInt("quantity"));
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

    public List reportOrderCustomer(int userId) throws SQLException, Exception {
        System.out.println("yes");
        ResultSet rs = null;
        Connection con = null;
        List<Products> orderList3 = new ArrayList<>();
        try {
            String sql = "SELECT orderId,productName,productMake,quantity,productPrice,startDate,endDate FROM orders o INNER JOIN products p ON o.productId=p.productId INNER JOIN user u On u.userId=o.userId Where o.userId=?;";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            rs = ps.executeQuery();
            System.out.println("rs :" + rs);

            while (rs.next()) {

                Products order = new Products();
                order.setProductName(rs.getString("productName"));
                order.setProductMake(rs.getString("productMake"));
                order.setProductPrice(rs.getDouble("productPrice"));
                order.setProductSpecification(rs.getString("productSpecification"));

//                user.setUserName(rs.getString("userName"));
//                user.setPassword(rs.getString("password"));
//                user.setFirstName(rs.getString("firstName"));
//                us  Userer.setLastName(rs.getString("lastName"));
//                user.setEmail(rs.getString("email"));
//                user.setPhoneNumber(rs.getString("phoneNumber"));
                orderList3.add(order);
            }
            System.out.println(orderList3);
            return orderList3;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int orderPlace(int userId, ArrayList productId, ArrayList quantity, String userEmail, ArrayList startDateArray, ArrayList endDateArray) {
        Connection con = null;
        ResultSet rs = null;
        int row = 0;
        int row1 = 0;
        System.out.println("Function Call orderPlace");

        try {

            con = ConnectionManager.getConnection();

            for (int i = 0; i < productId.size(); i++) {

                String sql = "INSERT INTO orders(productId,userId,startDate,endDate,quantity) VALUES(?,?,?,?,?);";
                String sql1 = "UPDATE electronic_rental_system.products SET availability = availability-? WHERE productId =?";
                PreparedStatement ps = con.prepareStatement(sql);
                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setInt(1, (int) quantity.get(i));
                ps1.setInt(2, (int) productId.get(i));

                ps.setInt(1, (int) productId.get(i));
                ps.setInt(2, userId);
                ps.setString(3, (String) startDateArray.get(i));
                ps.setString(4, (String) endDateArray.get(i));
                ps.setInt(5, (int) quantity.get(i));

                row = ps.executeUpdate();
                row1 = ps1.executeUpdate();

            }

            return row;
        } catch (SQLException ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return row;

    }

    public ArrayList productInCart(ArrayList cart, Object startDate, Object endDate) {
        System.out.println("productInCart");
        System.out.println("startDate " + startDate);
        System.out.println("endDate " + endDate);

        Connection con = null;
        ArrayList products = new ArrayList();
        ArrayList cartList = cart;
        System.out.println(cart);
        Iterator itr = cartList.iterator();
        System.out.println(itr);
        try {
            System.out.println("productInCart1");
            while (itr.hasNext()) {
                Products product = (Products) itr.next();
                System.out.println(product);

                con = ConnectionManager.getConnection();
                String sql = "SELECT * FROM electronic_rental_system.products where productId=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, product.getProductId());
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    product.setProductId(rs.getInt("productId"));
                    product.setProductName(rs.getString("productName"));
                    product.setProductMake(rs.getString("productMake"));
                    product.setAvailability(rs.getInt("availability"));
                    DecimalFormat df = new DecimalFormat("0.00");
                    if (startDate == null) {
                        product.setProductPrice(Double.parseDouble(df.format(rs.getDouble("productPrice"))) * product.getQuantity());
                    } else {
                        System.out.println("productInCartTotal 382 " + String.valueOf(endDate));

                        String[] endDateArray = String.valueOf(endDate).split("-");
                        String[] startDateArray = String.valueOf(startDate).split("-");
                        System.out.println("productInCartTotal 264 " + Integer.parseInt(endDateArray[0]));
                        System.out.println("productInCartTotal 264 " + Integer.parseInt(endDateArray[1]));
                        System.out.println("productInCartTotal 264 " + Integer.parseInt(endDateArray[2]));
                        System.out.println("productInCartTotal 265 " + startDateArray[0]);
                        System.out.println("productInCartTotal 265 " + startDateArray[1]);
                        System.out.println("productInCartTotal 265 " + startDateArray[2]);

                        LocalDate end_date = LocalDate.of(Integer.parseInt(endDateArray[0]), Integer.parseInt(endDateArray[1]), Integer.parseInt(endDateArray[2]));
                        System.out.println("productInCartTotal 270 ");

                        LocalDate start_date = LocalDate.of(Integer.parseInt(startDateArray[0]), Integer.parseInt(startDateArray[1]), Integer.parseInt(startDateArray[2]));
//                int mm=Integer.parseInt(endDateArray[1])-Integer.parseInt(startDateArray[1]);
                        System.out.println("productInCartTotal 259 ");
                        Period difference = Period.between(start_date, end_date);

                        int days = difference.getDays();
                        int months = difference.getMonths();
                        int years = difference.getYears();

                        product.setPrice(Double.parseDouble(df.format(rs.getDouble("productPrice"))) * product.getQuantity());
                        product.setProductPrice(Double.parseDouble(df.format(rs.getDouble("productPrice"))) * product.getQuantity() * ((days / 30) + months + (12 * years)));
                    }

                }
                products.add(product);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return products;
    }
    
    public List placedOrder(int userId) {
         ResultSet rs = null;
        Connection con = null;
        List<Orders> orderList = new ArrayList<>();
        try {
            String sql = "SELECT orderId,productName,productMake,quantity,productPrice,startDate,endDate FROM orders o "
                    + "INNER JOIN products p ON o.productId=p.productId INNER JOIN user u On u.userId=o.userId Where o.userId=?;";
            con = ConnectionManager.getConnection();
            
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {

                Orders order = new Orders();
                order.setProductPrice(rs.getDouble("productPrice"));
               // order.setOrderId(rs.getInt("orderId"));
               // order.setProductId(rs.getInt("productId"));
               // order.setUserId(rs.getInt("userId"));
                order.setStartDate(rs.getString("startDate"));
                order.setEndDate(rs.getString("endDate"));
                order.setQuantity(rs.getInt("quantity"));
                order.setProductName(rs.getString("productName"));
                order.setProductMake(rs.getString("productMake"));
               // order.setUserName(rs.getString("userName"));

                orderList.add(order);
            }
            return orderList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

}
