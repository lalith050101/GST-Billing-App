package com.getentertain.demo.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.getentertain.demo.model.Product;

public class ProductDAOImpl implements ProductDAO{

    private JdbcTemplate jdbcTemplate;
 
    public ProductDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

   private void createTable() {
    try {
    	String sqlCreate = "CREATE TABLE IF NOT EXISTS product  ( pcode  varchar(45) , pname  varchar(45) , pprice  double , pgst double, pqnty int, ptotal double)";
    	jdbcTemplate.execute(sqlCreate);
    }
    catch(Exception e) {
    	System.out.println("exception in creating table");
    }
    
    
     }
 
    @Override
    public boolean saveOrUpdate(Product product, String pdcode, String pdname) {
    	
    	this.createTable();
    	if (this.get(pdcode) != null || this.get2(pdname)!=null) {
	    		
	            
	            String sql = "UPDATE product SET code=?, name=?, price=?, " + "gst=? WHERE code=?";
	            jdbcTemplate.update(sql, product.getCode(), product.getName(), product.getPrice(), product.getGst(),pdcode);
	           
	        } else {
	        	if(this.get(product.getCode())!=null || this.get2(product.getName())!=null)
	        	{
	        		return false;
	        	}
	            String sql = "INSERT INTO product (code, name, price, gst)" + " VALUES (?, ?, ?, ?)";
	            jdbcTemplate.update(sql, product.getCode(), product.getName(), product.getPrice(), product.getGst());
	        }
	        return true;
	    
    } 
    
 
    @Override
    public void delete(String productCode) {
    	
    	String sql = "DELETE FROM product WHERE code = ?";
        jdbcTemplate.update(sql, productCode);
    }
 
   

    
    
    @Override
    public List<Product> list() {
    	this.createTable();
    	 String sql = "SELECT * FROM product ORDER BY name";
    	    List<Product> listProduct = jdbcTemplate.query(sql, new RowMapper<Product>() {
    	 
    	        @Override
    	        public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
    	            Product aProduct = new Product();
    	 
    	            aProduct.setCode(rs.getString("code"));
    	            aProduct.setName(rs.getString("name"));
    	            aProduct.setPrice(rs.getDouble("price"));
    	            aProduct.setGst(rs.getDouble("gst"));
    	   	 
    	            return aProduct;
    	        }
    	 
    	    });
    	 
    	    return listProduct;
    }
 
    @Override
    public Product get(String code) {
    	
    	  String sql = "SELECT * FROM product WHERE code='"+code+"'";
    	    return jdbcTemplate.query(sql, new ResultSetExtractor<Product>() {
    	 
    	        @Override
    	        public Product extractData(ResultSet rs) throws SQLException,
    	                DataAccessException {
    	            if (rs.next()) {
    	                Product product = new Product();
    	                product.setCode(rs.getString("code"));
    	                product.setName(rs.getString("name"));
    	                product.setPrice(rs.getDouble("price"));
    	                product.setGst(rs.getDouble("gst"));
    	                return product;
    	            }
    	 
    	            return null;
    	        }
    	 
    	    });
    }
    
    @Override
    public Product get2(String name) {
    	  String sql = "SELECT * FROM product WHERE name='"+name+"'";
    	    return jdbcTemplate.query(sql, new ResultSetExtractor<Product>() {
    	 
    	        @Override
    	        public Product extractData(ResultSet rs) throws SQLException,
    	                DataAccessException {
    	            if (rs.next()) {
    	                Product product = new Product();
    	                product.setCode(rs.getString("code"));
    	                product.setName(rs.getString("name"));
    	                product.setPrice(rs.getDouble("price"));
    	                product.setGst(rs.getDouble("gst"));
    	                return product;
    	            }
    	 
    	            return null;
    	        }
    	 
    	    });
    }
 
 
}
