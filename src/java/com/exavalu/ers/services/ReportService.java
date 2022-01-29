package com.exavalu.ers.services;

import com.exavalu.ers.core.ConnectionManager;
import com.exavalu.ers.pojos.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ankita Saha
 */
public class ReportService {

    public List outOfStock() throws SQLException, Exception {
        ResultSet rs = null;
        System.out.println("Got report action");

        Connection con = null;
        List<Products> productList = new ArrayList<>();
        try {
            String sql = "Select * from products where availability<40 order by availability ";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Products products = new Products();
                products.setProductId(rs.getInt("productId"));
                products.setProductName(rs.getString("productName"));
                products.setProductPrice(rs.getDouble("productPrice"));
                productList.add(products);
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

    public List mostOrderedProduct() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Products> productList = new ArrayList<>();
        List<Object> mostOrderedList = new ArrayList<>();
        try {
            String sql = "SELECT products.productId, products.productName,products.productPrice, orders.quantity FROM orders\n"
                    + "INNER JOIN products ON orders.productId=products.productId order by orders.quantity desc limit 10 ";           
            con = ConnectionManager.getConnection();        
            System.out.println("Connection is " + con);         
            PreparedStatement ps = con.prepareStatement(sql);         
            rs = ps.executeQuery();          
            while (rs.next()) {

                Products product = new Products();
                product.setProductId(rs.getInt("productId"));
                product.setProductName(rs.getString("productName"));
                product.setProductPrice(rs.getDouble("productPrice"));
                
                product.setQuantity(rs.getInt("quantity"));
                
                mostOrderedList.add(product);
            }          
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
        return mostOrderedList;

    }
    
    
    public List newAddedProducts() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Object> newProductList = new ArrayList<>();
        try {
            String sql = "select productName,productMake,productPrice from products limit 10 "; 
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Products products = new Products();
                products.setProductName(rs.getString("productName"));
                products.setProductPrice(rs.getDouble("productPrice"));
                products.setProductMake(rs.getString("productMake"));
                newProductList.add(products);
            }
            return newProductList;
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
