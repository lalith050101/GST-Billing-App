package com.getentertain.demo.model;


import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
public class Product {
	@NotBlank(message="*Product Code can't be blank")
    @Size(min = 1 , max = 30 , message="* Code should be 1 to 30 characters")
	private String code;
	@NotBlank(message="*Product Name can't be blank")
    @Size(min = 1 , max = 30 , message="* Code should be 1 to 30 characters")
	private String name;

	
	private double price;
	
    private double gst;
    
    
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
		this.price = Math.round(price * 100.0D) / 100.0D;
	}
	public double getGst() {
		return gst;
	}
	public void setGst(double gst) {
		this.gst = gst;
	}
	
	public Product()
	{
		
	}
	
	public Product(String code, String name, double price, double gst) {
		this.code = code;
		this.name = name;
		this.price = price;
		this.gst = gst;
	}
	
	
 
 
   
}