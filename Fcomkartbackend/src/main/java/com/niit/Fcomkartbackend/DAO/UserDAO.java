package com.niit.Fcomkartbackend.DAO;

import java.util.List;

import com.niit.Fcomkartbackend.Model.User;


public interface UserDAO {
	
	public List<User> list();
	
	public User getByUserId(int userid);
	
	public User getByUserName(String userName);		
	
	
	public User getByEmailId(String emailid);
	public User getByContactNumber(String contactNumber);
	
 
	public boolean isAllReadyRegister(String email, boolean b);
	
	public void saveOrUpdate(User user);
		
	public void delete(int UserId);



}
