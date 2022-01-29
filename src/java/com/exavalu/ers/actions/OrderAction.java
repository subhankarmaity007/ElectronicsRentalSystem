/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.exavalu.ers.pojos.Orders;
import com.exavalu.ers.services.OrderService;

public class OrderAction extends ActionSupport {

    private int orderId;
    private int productId;
    private int userId;
    private String startDate;
    private String endDate;
    private int quantity;
      private String productName;
    private double productPrice;
    
    
    
    private String submitType;
    private String msg = "";
    private String msg1="";
    private ResultSet rs = null;
    private Orders order = null;
    private List<Orders> orderList = null;
    private OrderService orderService = new OrderService();
    private boolean noData = false;
   
    public String orderReport() throws Exception {
        setOrderService(new OrderService());
        try {

            setOrderList(new ArrayList<>());
            setOrderList(getOrderService().reportOrder());

            if (!orderList.isEmpty()) {
                setNoData(false);
                System.out.println("Orders retrieve = " + getOrderList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "ORDERREPORT";
    }

    public String orderUpdate() throws Exception {
       orderService = new OrderService();
        try {
            if (getSubmitType().equals("updatedata")) {
                Orders order = getOrderService().fetchOrderDetails(getOrderId());
                if (getOrderId() != 0) {
                    setOrderId(order.getOrderId());
                    setProductId(order.getProductId());
                    setUserId(order.getUserId());
                    setStartDate(order.getStartDate());
                    setEndDate(order.getEndDate());
                    setQuantity(order.getQuantity());
                }
            } else {
                int i = orderService.updateOrderDetails( orderId, productId, userId, startDate, endDate, quantity);
                if (i > 0) {
                    setMsg("Record Updated Successfuly");
                } else {
                    setMsg("error");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "UPDATE";
    }
    
    
    
     public String orderDelete() throws Exception {
        try {
            int isDeleted =getOrderService().deleteOrderDetails(getOrderId());
            if (isDeleted > 0) {
                setMsg1("Record deleted successfully");
                System.out.println("Product Deleted");
            } else {
                setMsg1("Some error");
                System.out.println("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DELETEORDER";
}
    
    
     public String CustomerOrderReport() throws Exception {
        setOrderService(new OrderService());
        try {

            setOrderList(new ArrayList<>());
            setOrderList(getOrderService().CustomerOrderList());

            if (!orderList.isEmpty()) {
                setNoData(false);
                //System.out.println("Orders retrieve = " + getOrderList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "CUSTOMERORDERREPORT";
    }
    
    
    
    
    
    
    
    
    
    

    /**
     * @return the orderId
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the productId
     */
    public int getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(int productId) {
        this.productId = productId;
    }

    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the submitType
     */
    public String getSubmitType() {
        return submitType;
    }

    /**
     * @param submitType the submitType to set
     */
    public void setSubmitType(String submitType) {
        this.submitType = submitType;
    }

    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @param msg the msg to set
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * @return the rs
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * @param rs the rs to set
     */
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    /**
     * @return the order
     */
    public Orders getOrder() {
        return order;
    }

    /**
     * @param order the order to set
     */
    public void setOrder(Orders order) {
        this.order = order;
    }

    /**
     * @return the orderList
     */
    public List<Orders> getOrderList() {
        return orderList;
    }

    /**
     * @param orderList the orderList to set
     */
    public void setOrderList(List<Orders> orderList) {
        this.orderList = orderList;
    }

    /**
     * @return the orderService
     */
    public OrderService getOrderService() {
        return orderService;
    }

    /**
     * @param orderService the orderService to set
     */
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    /**
     * @return the noData
     */
    public boolean isNoData() {
        return noData;
    }

    /**
     * @param noData the noData to set
     */
    public void setNoData(boolean noData) {
        this.noData = noData;
    }

    /**
     * @return the msg1
     */
    public String getMsg1() {
        return msg1;
    }

    /**
     * @param msg1 the msg1 to set
     */
    public void setMsg1(String msg1) {
        this.msg1 = msg1;
    }

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the productPrice
     */
    public double getProductPrice() {
        return productPrice;
    }

    /**
     * @param productPrice the productPrice to set
     */
    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

   
    
    
    
    
    
    
    
    
    
    
}
