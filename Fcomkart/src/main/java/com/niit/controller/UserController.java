package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Fcomkartbackend.DAO.RoleDAO;
import com.niit.Fcomkartbackend.DAO.ShippingaddressDAO;
import com.niit.Fcomkartbackend.DAO.UserDAO;
import com.niit.Fcomkartbackend.Model.Role;
import com.niit.Fcomkartbackend.Model.Shippingaddress;
import com.niit.Fcomkartbackend.Model.User;




@Controller
public class UserController {
	
	
		

			@Autowired
			private UserDAO userDAO;
			
			@Autowired
			private RoleDAO roleDAO;

			@Autowired
			private Role role;
			
			@Autowired
			private ShippingaddressDAO shippingDAO;
			
			
			
			@RequestMapping("/all/newUser")
			public ModelAndView newUser(@ModelAttribute User user,HttpSession session,Model model) {
				System.out.println(user.getUserId());
				System.out.println(role.getUserId());
				user.setEnabled(true);
				role.setEmailId(user.getEmailId());
				role.setRole("ROLE_USER");
				role.setUserName(user.getUserName());
				role.setContactNumber(user.getContactNumber());
				user.setRole(role);
				role.setUser(user);
				Shippingaddress shipping=new Shippingaddress();
				shipping.setAddress(user.getAddress());
				shipping.setContactNumber(user.getContactNumber());
				shipping.setEmailId(user.getEmailId());
				shipping.setUser(user);
				shipping.setUserName(user.getUserName());
				

				userDAO.saveOrUpdate(user);
				roleDAO.saveOrUpdate(role);
				shippingDAO.saveOrUpdate(shipping);
				
				model.addAttribute("message", "User Added Successfully...!");
				ModelAndView mv = new ModelAndView("home");

				return mv;
			}
			
		}




