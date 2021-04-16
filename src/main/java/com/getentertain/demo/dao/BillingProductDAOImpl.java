package com.getentertain.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.getentertain.demo.model.BillingProduct;
import com.getentertain.demo.model.Product;

public class BillingProductDAOImpl  implements BillingProductDAO{

	@Autowired
	private ProductDAO productDAO;
	
	 private JdbcTemplate jdbcTemplate;
	 
	 public BillingProductDAOImpl(DataSource dataSource) {
	        jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	
	  private void createTable() {
	    try {
		String sqlCreate = "CREATE TABLE IF NOT EXISTS billingproduct  ( pcode  varchar(45) , pname  varchar(45) , pprice  double precision , pgst double precision, pqnty int, ptotal double precision)";
		jdbcTemplate.execute(sqlCreate);
	    }
	    catch(Exception e) {
		System.out.println("exception in creating table" + e);
	    }
    
     	}
	 
	
	 @Override
	public void addProduct(String pcode,int quantity) {
		this.createTable();
		 BillingProduct billingProduct=this.get(pcode);
		 if(billingProduct == null) {

			 Product product = productDAO.get(pcode);
			 System.out.println("value of total"+( (100+product.getGst())*(product.getPrice())*(quantity) )/100.0);
			 String sql = "INSERT INTO billingproduct (pcode, pname, pprice, pgst,pqnty,ptotal)" + " VALUES (?, ?, ?, ?, ?, ?)";
			 jdbcTemplate.update(sql, product.getCode(), product.getName(), product.getPrice(), product.getGst(),quantity, Math.round(  ((   (100+product.getGst())*(product.getPrice())*(quantity) )/100.0 ) *100.0)/100.0);
	       
		 }
		 else {
			 int currqnty = billingProduct.getQnty();
			 changeQnty(pcode,currqnty+quantity);
		 }
	 }
	
	@Override
	 public void removeProduct(String pcode) {
		 
		 String sql = "DELETE FROM  billingproduct where pcode=?";
         jdbcTemplate.update(sql, pcode);
 
	 }
	
	 @Override
	 public void removeAllProduct() {
		 String sql="DELETE FROM billingproduct";
		 jdbcTemplate.update(sql);
	 }
	
	 
	 @Override
	   public void changeQnty(String pdcode,int qnty) {
		 String sql="UPDATE billingproduct SET pqnty=? , ptotal= ((100+pgst)*(pprice)*(?))/100.0 WHERE pcode=?";
		 jdbcTemplate.update(sql,qnty,qnty,pdcode);
	 }

	
	@Override
    public List<BillingProduct> list() {
	    this.createTable();
    	 String sql = "SELECT * FROM billingproduct ORDER BY pname";
    	    List<BillingProduct> listBillingProduct = jdbcTemplate.query(sql, new RowMapper<BillingProduct>() {
    	 
    @Override
    public BillingProduct mapRow(ResultSet rs, int rowNum) throws SQLException {
        BillingProduct aProduct = new BillingProduct();
 
	    aProduct.setCode(rs.getString("pcode"));
	    aProduct.setName(rs.getString("pname"));
	    aProduct.setPrice(rs.getDouble("pprice"));
	    aProduct.setGst(rs.getDouble("pgst"));
	    aProduct.setQnty(rs.getInt("pqnty"));
	    aProduct.setTotal(rs.getDouble("ptotal"));
		            return aProduct;
	        }
	 
	    });
    	 
    	    return listBillingProduct;
    }
	
	@Override
	   public double getGrandTotal() {
		   this.createTable();
		  String sql = "SELECT sum(ptotal) FROM billingproduct ";
		  double grandtotal = jdbcTemplate.queryForObject(sql,Double.class);
		  return Math.round((grandtotal*100.0)/100.0);
		  
	   }
	
	  @Override
	    public BillingProduct get(String pdcode) {
	    	  String sql = "SELECT * FROM billingproduct WHERE pcode='"+pdcode+"'";
	    	
	    	    return jdbcTemplate.query(sql, new ResultSetExtractor<BillingProduct>() {
	    	 
	    	        @Override
	    	        public BillingProduct extractData(ResultSet rs) throws SQLException,
	    	                DataAccessException {
	    	            if (rs.next()) {
	    	                BillingProduct billingProduct = new BillingProduct();
	    	                billingProduct.setCode(rs.getString("pcode"));
	    	                billingProduct.setName(rs.getString("pname"));
	    	                billingProduct.setPrice(rs.getDouble("pprice"));
	    	                billingProduct.setGst(rs.getDouble("pgst"));
	    	                billingProduct.setQnty(rs.getInt("pqnty"));
	    	                billingProduct.setTotal(rs.getDouble("pgst"));
	    	                return billingProduct;
	    	            }
	    	 
	    	            return null;
	    	        }
	    	 
	    	    });
	    }
	    
	
}
