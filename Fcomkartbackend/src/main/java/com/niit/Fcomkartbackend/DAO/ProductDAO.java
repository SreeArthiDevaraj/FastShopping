package com.niit.Fcomkartbackend.DAO;
import java.util.List;

import com.niit.Fcomkartbackend.Model.Product;

public interface ProductDAO {
	
public List<Product> list();
	
	public Product getByProductId(int Productid);
	
	public Product getByProductName(String Productname);
	
	public void saveOrUpdate(Product Product);
	
	public void delete(int Product_id);
}
