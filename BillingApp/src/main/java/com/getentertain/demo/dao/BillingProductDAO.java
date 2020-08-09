package com.getentertain.demo.dao;

import java.util.List;

import com.getentertain.demo.model.BillingProduct;



public interface BillingProductDAO {

	   public void addProduct(String pcode,int quantity);
	   public void removeProduct(String pcode);
	   public void removeAllProduct();
	   public void changeQnty(String pdcode,int qnty);
	   public BillingProduct get(String pdcode);
	   public double getGrandTotal();
	   public List<BillingProduct> list();
	   
}
	
	

