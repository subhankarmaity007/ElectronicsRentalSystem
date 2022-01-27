/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.actions;

import com.exavalu.ers.dao.Admin;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.exavalu.ers.pojos.Orders;


/**
 *
 * @author Avijit Chattopadhyay
 */
public class AdminOrderAction extends ActionSupport {

   
    ResultSet rs = null;
    Orders order = null;
    private List<Orders> orderList = null;
    Admin admin = new Admin();
    private boolean noData = false;

    @Override
    public String execute() throws Exception {
        try {
            setOrderList(new ArrayList<>());
            setOrderList(admin.report());
            

            if (!orderList.isEmpty() ) {
                setNoData(false);
                System.out.println("Orders retrieve = "+getOrderList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORT";
    }

    /**
     * @return the userList
     */
    public List<Orders> getOrderList() {
        return orderList;
    }

    /**
     * @param userList the userList to set
     */
    public void setOrderList(List<Orders> userList) {
        this.orderList = orderList;
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

}
