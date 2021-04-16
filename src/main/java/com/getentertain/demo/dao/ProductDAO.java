package com.getentertain.demo.dao;

import java.util.List;
import com.getentertain.demo.model.Product;
public interface ProductDAO {
     
    public boolean saveOrUpdate(Product contact, String pdcode,String pdname);
     
    public void delete(String code);
     
    public Product get(String code);
     
    public Product get2(String name);
    public List<Product> list();
}