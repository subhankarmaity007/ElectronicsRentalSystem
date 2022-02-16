/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.actions;

import com.exavalu.ers.pojos.Products;
import com.exavalu.ers.services.ProductService;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;

/**
 *
 * @author deepd
 */
public class ProductAction extends UserAction {

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }
    private int productId;
    private String productName;
    private String productMake;
    private double productPrice;
    private int availability;
    private int status;
    private String productImage;
    private String productSpecification;
    private String msg = "";

    private ProductService productService = null;
    private int ctr = 0;
    private static long serialVersionUID = 6329394260276112660L;
    private ResultSet rs = null;
    private Products product = null;
    private List<Products> productList = null;
    //private Admin admin = new Admin();
    private boolean noData = false;
    private ProductService daoo = new ProductService();
    private String submitType;
    private String msg1;

    private int quantity;
    
    private String fileName;  // For file upload

    public String productReport() throws Exception {

        if (getSessionMap().get("roleId") != null) {
            setProductService(new ProductService());
            try {
                setProductList(new ArrayList<>());
                setProductList(getProductService().showAllProducts());

                if (!productList.isEmpty()) {
                    setNoData(false);
                    System.out.println("Products retrieve = " + getProductList().size());
                    System.out.println("setting nodata=false");
                } else {
                    setNoData(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "REPORTPRODUCT";
        } else {
            return "LOGIN";
        }
    }

//    public String laptop() throws Exception {
//
//        if (getSessionMap().get("roleId") != null) {
//            setProductService(new ProductService());
//            try {
//                setProductList(new ArrayList<>());
//                setProductList(getProductService().showLaptop());
//                System.out.println(getProductList());
//
//                if (!productList.isEmpty()) {
//                    setNoData(false);
//                    System.out.println("Products retrieve = " + getProductList().size());
//                    System.out.println("setting nodata=false");
//                } else {
//                    setNoData(true);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            return "REPORTPRODUCT";
//        } else {
//            return "LOGIN";
//        }
//    }
//
//    public String desktop() throws Exception {
//        if (getSessionMap().get("roleId") != null) {
//            setProductService(new ProductService());
//            try {
//                setProductList(new ArrayList<>());
//                setProductList(getProductService().showDesktop());
//                System.out.println(getProductList());
//
//                if (!productList.isEmpty()) {
//                    setNoData(false);
//                    System.out.println("Products retrieve = " + getProductList().size());
//                    System.out.println("setting nodata=false");
//                } else {
//                    setNoData(true);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            return "REPORTPRODUCT";
//        } else {
//            return "LOGIN";
//        }
//
//    }
//    public String tablet() throws Exception {
//        if (getSessionMap().get("roleId") != null) {
//
//            setProductService(new ProductService());
//            try {
//                setProductList(new ArrayList<>());
//                setProductList(getProductService().showTablet());
//                System.out.println(getProductList());
//
//                if (!productList.isEmpty()) {
//                    setNoData(false);
//                    System.out.println("Products retrieve = " + getProductList().size());
//                    System.out.println("setting nodata=false");
//                } else {
//                    setNoData(true);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            return "REPORTPRODUCT";
//        } else {
//            return "LOGIN";
//        }
//    }

    public String showCustomerProduct() throws Exception {
        if (getSessionMap().get("roleId") != null) {

            setProductService(new ProductService());
            try {
                setProductList(new ArrayList<>());
                setProductList(getProductService().showCustomerProductALL(productName));
                System.out.println(getProductList());

                if (!productList.isEmpty()) {
                    setNoData(false);
                    System.out.println("Products retrieve = " + getProductList().size());
                    System.out.println("setting nodata=false");
                } else {
                    setNoData(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "REPORTPRODUCT";
        } else {
            return "LOGIN";
        }
    }
    
   

    public String productUpdate() throws Exception {
        if (getSessionMap().get("roleId") != null) {

            setDaoo(new ProductService());
            try {
                if (getSubmitType().equals("updatedata")) {
                    Products product = getDaoo().fetchProductDetails(getProductId());
                    if (product != null) {
                        setProductId(product.getProductId());
                        setProductName(product.getProductName());
                        setProductMake(product.getProductMake());
                        productSpecification = product.getProductSpecification();
                        setProductPrice(product.getProductPrice());
                        setAvailability(product.getAvailability());
                    }
                } else {
                    ctr = getDaoo().updateProduct(getProductId(), getProductName(), getProductMake(), productSpecification, getProductPrice(), getAvailability());
                    if (ctr > 0) {
                        setMsg("Record Updated Successfuly");
                    } else {
                        setMsg("error");
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

            return "UPDATEPRODUCT";
        } else {
            return "LOGIN";
        }
    }

    public String productDelete() throws Exception {

        if (getSessionMap().get("roleId") != null) {

            try {
                int isDeleted = getDaoo().deleteProductDetails(getProductId(), getStatus());
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
            return "REDIRECTPRODUCT";
        } else {
            return "LOGIN";
        }
    }

    public String cartSize() {
        if (getSessionMap().get("roleId") != null) {

            System.out.println(productId);
            System.out.println(quantity);
            //setCart(getProductService().itemsInCart(getProductId(), getQuantity()));
            //System.out.println(cart);
            return "ITEMSINCART";
        } else {
            return "LOGIN";
        }
    }

    public String addProduct() throws Exception {
        return "ADDPRODUCT";
    }

    public String registerProduct() throws Exception {
        productService = new ProductService();

        setCtr(productService.addProduct(productName, productMake, productSpecification, productPrice, availability));
        System.out.println(productName);
        System.out.println(productMake);
        System.out.println(productSpecification);
        System.out.println(productPrice);
        System.out.println(availability);
        if (getCtr() > 0) {
            setMsg("One Product Added Successfully");
            System.out.println("One Product Added Successfull");
        } else {
            setMsg("Some error");
        }
        return "ADDPRODUCT";
    }

    public String fileUploadFromPC() throws Exception {
        productService = new ProductService();
        System.out.println(getFileName());
        setCtr(productService.uploadFile(getFileName()));
//        int done= myFile.uploadFile(fileName);
        if (getCtr() > 0) {
            System.out.println("File upload successfully..");
        } else {
            System.out.println("File Not uploaded");
        }

        return "ADDPRODUCT";
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

    /**
     * @return the availability
     */
    public int getAvailability() {
        return availability;
    }

    /**
     * @param availability the availability to set
     */
    public void setAvailability(int availability) {
        this.availability = availability;
    }

    /**
     * @return the productImage
     */
    public String getProductImage() {
        return productImage;
    }

    /**
     * @param productImage the productImage to set
     */
    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    /**
     * @return the productSpecification
     */
    public String getProductSpecification() {
        return productSpecification;
    }

    /**
     * @param productSpecification the productSpecification to set
     */
    public void setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
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
     * @return the productService
     */
    public ProductService getProductService() {
        return productService;
    }

    /**
     * @param productService the productService to set
     */
    public void setProductService(ProductService productService) {
        this.productService = productService;
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
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
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
    public ProductService getDaoo() {
        return daoo;
    }

    /**
     * @param dao the dao to set
     */
    public void setDaoo(ProductService dao) {
        this.daoo = daoo;
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
     * @return the cart
     */
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
     * @return the fileName
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * @param fileName the fileName to set
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
