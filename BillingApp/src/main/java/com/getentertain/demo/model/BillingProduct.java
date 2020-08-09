package com.getentertain.demo.model;

public class BillingProduct {
	
	private String code;
    private String name;
    private double price;
    private double gst;
    private int qnty;
    private double total;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {	
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = Math.round(price * 100.0) / 100.0;
	}
	public double getGst() {
		return gst;
	}
	public void setGst(double gst) {
		this.gst = gst;
	}
	public int getQnty() {
		return qnty;
	}
	public void setQnty(int qnty) {
		this.qnty = qnty;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public BillingProduct(String code, String name, double price, double gst, int qnty, double total) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.gst = gst;
		this.qnty = qnty;
		this.total = total;
	}
    
    public BillingProduct()
    {
    	
    }
	
	
}
