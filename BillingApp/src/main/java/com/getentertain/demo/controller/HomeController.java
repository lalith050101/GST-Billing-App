package com.getentertain.demo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.getentertain.demo.dao.BillingProductDAO;
import com.getentertain.demo.dao.ProductDAO;
import com.getentertain.demo.model.BillingProduct;
import com.getentertain.demo.model.Product;
@Controller
public class HomeController {

	
	 @Autowired
	 private ProductDAO productDAO;
	 @Autowired
	 private BillingProductDAO billingProductDAO;
	 
	 @RequestMapping(value="/")
	 public ModelAndView listProduct(ModelAndView model) throws IOException{
		 List<Product> listProduct = productDAO.list();
	     model.addObject("listProduct", listProduct);
	     model.setViewName("home");
	     return model;
	 }
	 
	 @RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	 public ModelAndView newProduct(ModelAndView model) {
	     Product newProduct = new Product();
	     model.addObject("product", newProduct);
	     model.addObject("msg","Fill details of new product");
	     model.setViewName("ProductForm");
	     return model;
	 }
	 
	 @RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	 public ModelAndView saveProduct(@Valid @ModelAttribute Product product,BindingResult result,HttpServletRequest request) {
		 
		 String pdcode = request.getParameter("pdcode");
		 String pdname = request.getParameter("pdname");
		 //Product prevProduct = productDAO.get(pdcode);
		 
		 if(result.hasErrors()) {
			ModelAndView model = new ModelAndView();
			model.setViewName("ProductForm");
		 model.addObject(product);
		 model.addObject("msg","Enter Valid Inputs");
			return model;
		 }
		 
		 
		 
		 boolean isupdate=productDAO.saveOrUpdate(product,pdcode,pdname);
		 if(!isupdate)
		 {
			 Product newProduct = new Product();
			 ModelAndView model = new ModelAndView("ProductForm");
			 model.addObject("product", newProduct);
		     model.addObject("msg","Sorry, product credentials already exists. Try some other.");
		     return model;
		 }
	     return new ModelAndView("redirect:/");
	 }
	 
	 
	 @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	    public ModelAndView deleteProduct(HttpServletRequest request) {
	        String code = request.getParameter("code");
	        productDAO.delete(code);
	        return new ModelAndView("redirect:/");
	    }
	 
	 @RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	 	public ModelAndView editProduct(HttpServletRequest request) {
			 String code = request.getParameter("code");
	  	     Product product = productDAO.get(code);
		     ModelAndView model = new ModelAndView("ProductForm");
		     model.addObject("msg","Edit Product");
		     model.addObject("product", product);
		     return model;
	 }    
	 

	 @RequestMapping(value="/BillingProduct")
	 public ModelAndView BillingProduct() throws IOException{
			ModelAndView model= new ModelAndView("Billing");
		 
			 List<BillingProduct> listBillingProduct = billingProductDAO.list();
			 double grandtotal;
			 boolean isEmpty;
			 if(listBillingProduct.size()>0) {
			 grandtotal = billingProductDAO.getGrandTotal();
			 isEmpty = false;
			 
			 }
			 else {
				 grandtotal = 0;
				 isEmpty=true;
			 }
			 model.setViewName("Billing");
			 model.addObject("listBillingProduct", listBillingProduct);
			 model.addObject("msg","");
			 model.addObject("isExist",false);
			 model.addObject("isEmpty",isEmpty);
			 model.addObject("pro",null);
			 model.addObject("GrandTotal",grandtotal);
			
			 return model;
	 }
	 
	 @RequestMapping(value="/searchProduct", method = RequestMethod.POST)
	 public ModelAndView searchProduct(HttpServletRequest request) throws IOException{
		 String searchvalue = request.getParameter("searchvalue");
  	     Product product = productDAO.get(searchvalue);
  	     String msg;
  	     boolean isExist ;
  	     boolean isEmpty=true;
  	     List<BillingProduct> listBillingProduct = billingProductDAO.list();
  	   if(listBillingProduct.size()>0) {
			 isEmpty = false;
			 
			 }
  	   
		if(product==null)
		 {
			product = productDAO.get2(searchvalue);
		 }
 
		if(product==null)
		 {
				msg = "No product exists";
				isExist = false;
				
		}else 
		{
  	    	 msg="";
  	    	 isExist = true;
  	     }
  	     ModelAndView model = new ModelAndView();
	     
		 model.setViewName("Billing");
	     model.addObject("listBillingProduct", listBillingProduct);
	     model.addObject("msg",msg);
	     model.addObject("isExist",isExist);
	     model.addObject("isEmpty",isEmpty);
	     model.addObject("pro", product);
	     return model;
	 }
	 
	 @RequestMapping(value="/addBillingProduct")
	 public ModelAndView addBillingProduct(HttpServletRequest request) throws IOException{
			
		 
		 String pdcode = request.getParameter("pdcode");
		 
		 int qnty = Integer.parseInt(request.getParameter("qnty"));
		billingProductDAO.addProduct(pdcode,qnty);
		
	     return new ModelAndView("redirect:/BillingProduct");
	 }
	 
	 @RequestMapping(value = "/removeBillingProduct", method = RequestMethod.GET)
	    public ModelAndView removeBillingProduct(HttpServletRequest request) {
	        String code = request.getParameter("code");
	        billingProductDAO.removeProduct(code);
	        
	        return new ModelAndView("redirect:/BillingProduct");
	    }
	 
	 @RequestMapping(value="/changeqnty", method = RequestMethod.POST)
	 public ModelAndView changeqnty(HttpServletRequest request)
	 {
		 String pdcode = request.getParameter("code");
		 int qnty = Integer.parseInt(request.getParameter("qnty"));
		 billingProductDAO.changeQnty(pdcode,qnty);
		 return new ModelAndView("redirect:/BillingProduct");
	 }
	 
	 @RequestMapping(value="/cancelBill")
	 public ModelAndView cancellBill() {
		 billingProductDAO.removeAllProduct();
		 return new ModelAndView("redirect:/");
	 }

}
