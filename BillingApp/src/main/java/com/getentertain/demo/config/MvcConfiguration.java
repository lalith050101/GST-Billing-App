package com.getentertain.demo.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.getentertain.demo.dao.BillingProductDAO;
import com.getentertain.demo.dao.BillingProductDAOImpl;
import com.getentertain.demo.dao.ProductDAO;
import com.getentertain.demo.dao.ProductDAOImpl;
import com.getentertain.demo.model.Product;


@Configuration
@ComponentScan(basePackages="com.getentertain.demo")

public class MvcConfiguration{
 
	@Autowired
	private Environment environment;
    @Bean
    public ViewResolver getViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
       
        return resolver;
    }
 
    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
//        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
//        dataSource.setUrl("jdbc:mysql://localhost:3306/gstbilling");
//        dataSource.setUsername("root");
//        dataSource.setPassword("root");
        dataSource.setDriverClassName(environment.getProperty("jdbc.driverClassName"));
		dataSource.setUrl(environment.getProperty("jdbc.url"));
		dataSource.setUsername(environment.getProperty("jdbc.username"));
		dataSource.setPassword(environment.getProperty("jdbc.password"));
         
        return dataSource;
    }
     
    @Bean
    public ProductDAO getProductDAO() {
        return new ProductDAOImpl(getDataSource());
    }
    
    @Bean 
    public BillingProductDAO getBillingProductDAO(){
    	return new BillingProductDAOImpl(getDataSource());
    }
    
    @Bean
    public Product getProduct() {
        return new Product();
    }
}
