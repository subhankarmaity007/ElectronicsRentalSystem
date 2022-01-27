
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.ers.pojos;

/**
 *
 * @author Ankush Saha
 */
public class User {
    private int userId;
    private int userName;
    private int userMobileNo;
    private int userEmail;
    private int password;
    private int city;
    private int country;
    private boolean status;
    private int roleId;

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
     * @return the userName
     */
    public int getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(int userName) {
        this.userName = userName;
    }

    /**
     * @return the userMobileNo
     */
    public int getUserMobileNo() {
        return userMobileNo;
    }

    /**
     * @param userMobileNo the userMobileNo to set
     */
    public void setUserMobileNo(int userMobileNo) {
        this.userMobileNo = userMobileNo;
    }

    /**
     * @return the userEmail
     */
    public int getUserEmail() {
        return userEmail;
    }

    /**
     * @param userEmail the userEmail to set
     */
    public void setUserEmail(int userEmail) {
        this.userEmail = userEmail;
    }

    /**
     * @return the password
     */
    public int getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(int password) {
        this.password = password;
    }

    /**
     * @return the city
     */
    public int getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(int city) {
        this.city = city;
    }

    /**
     * @return the country
     */
    public int getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(int country) {
        this.country = country;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the roleId
     */
    public int getRoleId() {
        return roleId;
    }

    /**
     * @param roleId the roleId to set
     */
    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}

