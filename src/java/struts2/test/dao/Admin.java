/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package struts2.test.dao;

import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.Products;
import com.exavalu.ers.pojos.User;
import static com.mysql.cj.MysqlType.LONGBLOB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import struts2.test.beans.Products;
//import struts2.test.beans.User;
//import struts2.test.core.ConnectionManager;

/**
 *
 * @author deepd
 */
public class Admin {

//    public int registerUser(String userName, String password, String firstName, String lastName,
//            String email, String phoneNumber) throws Exception {
//        int i = 0;
//        Connection con = null;
//        try {
//            con = ConnectionManager.getConnection();
//            String sql = "INSERT INTO users VALUES (?,?,?,?,?,?,?)";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, userName);
//            ps.setString(2, password);
//            ps.setString(3, firstName);
//            ps.setString(4, lastName);
//            ps.setString(5, email);
//            ps.setString(6, phoneNumber);
//            ps.setInt(7, 1);
//            System.out.println("SQL for insert="+ps);
//            i = ps.executeUpdate();
//            return i;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return i;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }
    
//    public int registerProduct(int productId, String productName, String productMake, double price,
//            int availability) throws Exception {
//        int i = 0;
//        Connection con = null;
//        try {
//            con = ConnectionManager.getConnection();
//            String sql = "INSERT INTO orderinventories.product VALUES (?,?,?,?,?,?,?)";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setInt(1, productId);
//            ps.setString(2, productName);
//            ps.setString(3, productMake);
//            ps.setString(4, productSpecification);
//            ps.setDouble(5, price);
//            ps.setInt(6, availability);
//            ps.setInt(7, 1);
//            System.out.println("SQL for insert=" + ps);
//            i = ps.executeUpdate();
//            return i;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return i;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }

//    public List report() throws SQLException, Exception {
//        ResultSet rs = null;
//        Connection con = null;
//        List<User> userList = new ArrayList<>();
//        try {
//            String sql = "SELECT userName, password, firstName, lastName, email, phoneNumber FROM users where status!=0";
//            con = ConnectionManager.getConnection();
//            System.out.println("Connection is " + con);
//            PreparedStatement ps = con.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//
//                User user = new User();
//                user.setUserName(rs.getString("userName"));
//                user.setPassword(rs.getString("password"));
//                user.setFirstName(rs.getString("firstName"));
//                user.setLastName(rs.getString("lastName"));
//                user.setEmail(rs.getString("email"));
//                user.setPhoneNumber(rs.getString("phoneNumber"));
//
//                userList.add(user);
//            }
//            return userList;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }
    public List productreport() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Products> productList = new ArrayList<>();
        try {
            String sql = "SELECT product.productId, productName, productMake, price, availability FROM orderinventories.product WHERE status!=0";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Products product = new Products();
                product.setProductId(rs.getInt("productId"));
                product.setProductName(rs.getString("productName"));
                product.setProductMake(rs.getString("productMake"));
                product.setProductSpecification(rs.getString("productSpecification"));
                product.setProductPrice(rs.getDouble("price"));
                //Products.setProductImage(rs.getString("productImage"));

                productList.add(product);
            }
            return productList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

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
     public Products fetchProductDetails(int productId) throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        Products product = new Products();
        try {
            con = ConnectionManager.getConnection();
            String sql ="SELECT product.productId, productName, productMake, price, availability FROM orderinventories.product WHERE productId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("productId = " + productId);
            ps.setInt(1, productId);
            System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {

                product.setProductId(rs.getInt("productId"));
                product.setProductName(rs.getString("productName"));
                product.setProductMake(rs.getString("productMake"));
                product.setPrice(rs.getDouble("price"));
                product.setAvailability(rs.getInt("availability"));

            }
            return product;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

//    public int updateUserDetails(String userName, String password, String firstName, String lastName,
//            String email, String phoneNumber) throws SQLException, Exception {
//
//        Connection con = ConnectionManager.getConnection();
//        int i = 0;
//        try {
//            String sql = "UPDATE users SET password = ?, firstName = ?, "
//                    + "lastName = ?, email = ?, phoneNumber = ? "
//                    + "WHERE userName = ?";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, password);
//            ps.setString(2, firstName);
//            ps.setString(3, lastName);
//            ps.setString(4, email);
//            ps.setString(5, phoneNumber);
//            ps.setString(6, userName);
//            System.out.println("Select SQL = " + ps);
//            i = ps.executeUpdate();
//            return i;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }
    public int updateProductDetails(int productId, String productName, String productMake, double price,
            int availability) throws SQLException, Exception {

        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE orderinventories.product SET productName = ?, productMake = ?, price = ?, availability = ? WHERE productId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, productName);
            ps.setString(2, productMake);
            ps.setDouble(3, price);
            ps.setInt(4, availability);
            ps.setInt(5, productId);
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

//    public int deleteUserDetails(String userName) throws SQLException, Exception {
//        Connection con = ConnectionManager.getConnection();
//        int i = 0;
//        try {
//            String sql = "UPDATE users SET status = 0 WHERE userName = ?";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, userName);
//            i = ps.executeUpdate();
//            return i;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return 0;
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    }

public int deleteProductDetails(int productId) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE product SET status = 0 WHERE productId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, productId);
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
}

