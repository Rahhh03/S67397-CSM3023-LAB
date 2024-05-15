package com.mycompany.lab5;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */ 
public class StockTransactionBean {
  private int shares;
    private double pricePerShare;
    private double commissionRate;

    // Constructor
    public StockTransactionBean() {
        // Default constructor
    } 
    // Getters and setters
    public int getShares() {
        return shares;    } 
    public void setShares(int shares) {
        this.shares = shares;    }
    public double getPricePerShare() {
        return pricePerShare;    }
    public void setPricePerShare(double pricePerShare) {
        this.pricePerShare = pricePerShare;    }
    public double getCommissionRate() {
        return commissionRate;    }
    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;    }
    // Method to calculate the amount paid for the stock alone (without commission)
    public double calculateStockAmount() {
        return shares * pricePerShare;    }
    // Method to calculate the commission amount
    public double calculateCommission() {
        return calculateStockAmount() * (commissionRate / 100);    }
    // Method to calculate the total amount paid (stock amount + commission)
    public double calculateTotalAmount() {
        return calculateStockAmount() + calculateCommission();
    }
}