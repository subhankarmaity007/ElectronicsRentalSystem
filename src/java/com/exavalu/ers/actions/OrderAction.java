/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.actions;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.exavalu.ers.pojos.Orders;
import com.exavalu.ers.pojos.Products;
import com.exavalu.ers.services.OrderService;
import com.exavalu.ers.services.ProductService;
import java.util.Iterator;

public class OrderAction extends UserAction {

    private int orderId;
    private int productId;
    private int userId;
    private String startDate;
    private String endDate;
    private int quantity;
    private String productName;
    private double productPrice;
    private String userName;
    private String userEmail;
    private double orderValue;

    UserAction useraction = new UserAction();

    private String submitType;
    private String msg = "";
    private String msg1 = "";
    private ResultSet rs = null;
    private Orders order = null;
    private List<Orders> orderList = null;
    private List<Products> customerOrderList = null;
    private OrderService orderService = new OrderService();
    private boolean noData = false;
    private int ctr = 0;

    public String orderReport() throws Exception {
        getSessionMap().get("roleId");
        if (getSessionMap() != null) {
            setOrderService(new OrderService());
            try {

                setOrderList(new ArrayList<>());
                setCustomerOrderList(new ArrayList<>());

                if ((int) getSessionMap().get("roleId") == 1) {
                    setOrderList(getOrderService().reportOrder());
                } else {
                    setCustomerOrderList(getOrderService().reportOrderCustomer((int) getSessionMap().get("userId")));
                    System.out.println(customerOrderList);
                }

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
        } else {
            return "LOGIN";
        }
    }

    public String orderUpdate() throws Exception {
        getSessionMap().get("roleId");
        if (getSessionMap() != null) {
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
                    setCtr(orderService.updateOrderDetails(orderId, productId, userId, startDate, endDate, quantity));
                    if (getCtr() > 0) {
                        setMsg("Record Updated Successfuly");
                    } else {
                        setMsg("error");
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

            return "UPDATE";
        } else {
            return "LOGIN";
        }
    }

    public String orderDelete() throws Exception {
        try {
            int isDeleted = getOrderService().deleteOrderDetails(getOrderId());
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

    public String addProductToCart() throws Exception {
        try {

            Products product = new Products();

            if (getProductId() != 0 && getQuantity() != 0) {
                product.setProductId(getProductId());
                product.setQuantity(getQuantity());
                product.setStartDate(getStartDate());
                product.setEndDate(getEndDate());

                if (sessionMap.get("cart") == null) {

                    ArrayList cart = new ArrayList();
                    cart.add(product);
                    sessionMap.put("cart", cart);

                } else {
                    ArrayList cart = (ArrayList) sessionMap.get("cart");

                    cart.add(product);
                    sessionMap.put("cart", cart);

                }

                sessionMap.put("startDate", getStartDate());
                sessionMap.put("endDate", getEndDate());

                ArrayList cart = (ArrayList) sessionMap.get("cart");

                System.out.println(cart.size());
//        }
//            else{
//                cart.add(product);
//            }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "ADDPRODUCTTOCART";
    }

    public String viewCart() throws Exception {

        System.out.println("sessioncart" + sessionMap.get("cart"));

        ArrayList cart = (ArrayList) sessionMap.get("cart");
        if (cart != null) {
            ArrayList productsInCart = getOrderService().productInCart(cart, sessionMap.get("startDate"), sessionMap.get("endDate"));
            System.out.println("viewCart 167");
            Orders orders = new Orders();
            orders.setProducts(productsInCart);
            sessionMap.put("orders", orders);
            sessionMap.put("productsInCart", productsInCart);

            return "VIEWCART";
        } else {

//            useraction.execute();
            setProductService(new ProductService());
            setProductList(new ArrayList<>());
            setProductList(getProductService().showTopProducts());

            return "DASHBOARD";

        }

    }

    public String viewReceipt() throws Exception {
        try {

            System.out.println("sessioncart" + sessionMap.get("cart"));

            ArrayList reciept = (ArrayList) sessionMap.get("cart");

            ArrayList productsInCart = getOrderService().productInCart(reciept, sessionMap.get("startDate"), sessionMap.get("endDate"));
            System.out.println("viewCart 167");
            Orders orders = new Orders();
            orders.setProducts(productsInCart);

            Iterator itr = productsInCart.iterator();
            System.out.println("viewReceipt 211" + itr);
            System.out.println("viewReceipt 212" + productPrice);
            double totalAmount = 0.00;
            while (itr.hasNext()) {
                Products prod = (Products) itr.next();
                totalAmount = totalAmount + prod.getProductPrice();

            }
            orders.setOrderValue(totalAmount);
            System.out.println(getOrderValue());

            sessionMap.put("orders", orders);
            sessionMap.put("productsInCart", productsInCart);
//        }
//            else{
//                cart.add(product);
//            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "VIEWRECIEPT";
    }

    public String addProductToReciept() throws Exception {
        try {

            Products product = new Products();

            if (getProductId() != 0 && getQuantity() != 0) {
                product.setProductId(getProductId());
                product.setQuantity(getQuantity());
                product.setStartDate(getStartDate());
                product.setEndDate(getEndDate());

                if (sessionMap.get("reciept") == null) {

                    ArrayList reciept = new ArrayList();
                    reciept.add(product);
                    sessionMap.put("reciept", reciept);

                    ArrayList productId = new ArrayList();
                    productId.add(getProductId());
                    sessionMap.put("productId", productId);

                    ArrayList quantity = new ArrayList();
                    quantity.add(getQuantity());
                    sessionMap.put("quantity", quantity);

                    ArrayList startDate = new ArrayList();
                    startDate.add(getStartDate());
                    sessionMap.put("startDateArray", startDate);

                    ArrayList endDate = new ArrayList();
                    endDate.add(getEndDate());
                    sessionMap.put("endDateArray", endDate);

                } else {
                    ArrayList reciept = (ArrayList) sessionMap.get("reciept");
                    ArrayList quantity = (ArrayList) sessionMap.get("quantity");
                    ArrayList productId = (ArrayList) sessionMap.get("productId");
                    ArrayList startDate = (ArrayList) sessionMap.get("startDateArray");
                    ArrayList endDate = (ArrayList) sessionMap.get("endDateArray");

                    reciept.add(product);
                    sessionMap.put("reciept", reciept);

                    quantity.add(getQuantity());
                    sessionMap.put("quantity", quantity);

                    productId.add(getProductId());
                    sessionMap.put("productId", productId);

                    startDate.add(getStartDate());
                    sessionMap.put("startDateArray", startDate);

                    endDate.add(getEndDate());
                    sessionMap.put("endDateArray", endDate);
                }

                sessionMap.put("startDate", getStartDate());
                sessionMap.put("endDate", getEndDate());

                ArrayList cart = (ArrayList) sessionMap.get("cart");

                System.out.println(cart.size());
//        }
//            else{
//                cart.add(product);
//            }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "ADDPRODUCTTORECIEPT";
    }

    public String placeOrder() throws Exception {
        System.out.println("ProductId:");
        userEmail = (String) sessionMap.get("userEmail");
        userId = (int) sessionMap.get("userId");
        ArrayList quantity = (ArrayList) sessionMap.get("quantity");
        ArrayList productId = (ArrayList) sessionMap.get("productId");
        ArrayList startDateArray = (ArrayList) sessionMap.get("startDateArray");
        ArrayList endDateArray = (ArrayList) sessionMap.get("endDateArray");

//        System.out.println("ProductId:" + getProductId());
//        System.out.println("Quantity:" + getQuantity());
//        System.out.println("Email:" + userEmail);
//        System.out.println("endDate:" + getEndDate());
        setCtr(getOrderService().orderPlace(userId, productId, quantity, userEmail, startDateArray, endDateArray));
        sessionMap.remove("cart");
        sessionMap.remove("reciept");
        sessionMap.remove("startDateArray");
        sessionMap.remove("endDateArray");

        if (getCtr() > 0) {
            System.out.println("One Order Successfull");
        } else {
            System.out.println("Error Happened");
        }
        orderPlaced();
        return "PLACEORDER";
    }

    public String orderPlaced() throws Exception {
        getSessionMap().get("roleId");
        if (getSessionMap() != null) {
            setOrderService(new OrderService());
            try {

                setOrderList(new ArrayList<>());
                setCustomerOrderList(new ArrayList<>());

                if ((int) getSessionMap().get("roleId") == 1) {
                    setOrderList(getOrderService().reportOrder());
                } else {
                    setCustomerOrderList(getOrderService().placedOrder((int)getSessionMap().get("userId")));
                    System.out.println(getCustomerOrderList());
                }

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
            return "ORDERED";
        } else {
            return "LOGIN";
        }
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

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the ctr
     */
    public int getCtr() {
        return ctr;
    }

    /**
     * @param ctr the ctr to set
     */
    public void setCtr(int ctr) {
        this.ctr = ctr;
    }

    /**
     * @return the customerOrderList
     */
    public List<Products> getCustomerOrderList() {
        return customerOrderList;
    }

    /**
     * @param customerOrderList the customerOrderList to set
     */
    public void setCustomerOrderList(List<Products> customerOrderList) {
        this.customerOrderList = customerOrderList;
    }

    /**
     * @return the userEmail
     */
    public String getUserEmail() {
        return userEmail;
    }

    /**
     * @param userEmail the userEmail to set
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    /**
     * @return the orderValue
     */
    public double getOrderValue() {
        return orderValue;
    }

    /**
     * @param orderValue the orderValue to set
     */
    public void setOrderValue(double orderValue) {
        this.orderValue = orderValue;
    }

}
