package com.exavalu.ers.actions;

import com.exavalu.ers.pojos.Products;
import com.exavalu.ers.services.ReportService;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.apache.struts2.dispatcher.SessionMap;

/**
 *
 * @author Ankita Saha
 */
public class ReportAction extends UserAction {

    private int productId;
    private String productName;
    private String productMake;
    private double productPrice;

    private ReportService reportService = null;
    private int ctr = 0;

    private ResultSet rs = null;
    private Products product = null;
    private List<Products> productList = null;
    private List<Products> newProductList = null;
    private List<Products> mostOrderedList = null;
    private boolean noData = false;
    private String submitType;
    private String msg1;

   

    
    
   public String mostReport() throws Exception {

        setReportService(new ReportService());
         System.out.println("Most Ordered report action");

        
      
            setMostOrderedList(new ArrayList<>());
            setMostOrderedList(getReportService().mostOrderedProduct());
            System.out.println(getMostOrderedList());
            
            setProductList(new ArrayList<>());
            setProductList(getReportService().outOfStock());
            
            

            if (!mostOrderedList.isEmpty()) {
                setNoData(false);
                System.out.println("Products retrieve = " + getMostOrderedList().size());
                System.out.println("setting nodata=false");
                
            } else {
                setNoData(true);
            }
            return "MOSTORDERED";
        
    }
    
    
   public String aboutUs() throws Exception {

        
            return "ABOUTUS";
        
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
     * @return the productMake
     */
    public String getProductMake() {
        return productMake;
    }

    /**
     * @param productMake the productMake to set
     */
    public void setProductMake(String productMake) {
        this.productMake = productMake;
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
     * @return the product
     */
    public Products getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(Products product) {
        this.product = product;
    }

    /**
     * @return the productList
     */
    public List<Products> getProductList() {
        return productList;
    }

    /**
     * @param productList the productList to set
     */
    public void setProductList(List<Products> productList) {
        this.productList = productList;
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
     * @return the dao
     */
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
     * @return the reportService
     */
    public ReportService getReportService() {
        return reportService;
    }

    /**
     * @param reportService the reportService to set
     */
    public void setReportService(ReportService reportService) {
        this.reportService = reportService;
    }

    /**
     * @return the newProductList
     */
    public List<Products> getNewProductList() {
        return newProductList;
    }

    /**
     * @param newProductList the newProductList to set
     */
    public void setNewProductList(List<Products> newProductList) {
        this.newProductList = newProductList;
    }

    /**
     * @return the mostOrderedList
     */
    public List<Products> getMostOrderedList() {
        return mostOrderedList;
    }

    /**
     * @param mostOrderedList the mostOrderedList to set
     */
    public void setMostOrderedList(List<Products> mostOrderedList) {
        this.mostOrderedList = mostOrderedList;
    }

   
    

    

}
