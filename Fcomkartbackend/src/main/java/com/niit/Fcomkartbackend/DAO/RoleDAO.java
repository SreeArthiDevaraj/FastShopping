package com.niit.Fcomkartbackend.DAO;

import java.util.List;

import com.niit.Fcomkartbackend.Model.Role;

public interface RoleDAO {
	
public List<Role> list();	
	
	public Role getByUserName(String username);
	
	public Role getByEmailId(String emailid);
	
	public Role getByContactNumber(String contactNumber);
	
	public void saveOrUpdate(Role role);
		
    public void delete(String username);


}
