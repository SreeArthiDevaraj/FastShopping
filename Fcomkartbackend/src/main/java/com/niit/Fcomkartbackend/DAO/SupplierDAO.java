package com.niit.Fcomkartbackend.DAO;

import java.util.List;

import com.niit.Fcomkartbackend.Model.Supplier;

public interface SupplierDAO {

public List<Supplier> list();
	
	public Supplier getBySupplierName(String suppliername);		
	
	public Supplier getBySupplierId(int supplierid);	
	
    public Supplier getByContactNo(String contactno);
    
	public void saveOrUpdate(Supplier supplier);
		
	public  void delete(int supplierid);


}
