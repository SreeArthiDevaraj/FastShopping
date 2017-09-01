package com.niit.controller;
import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Fcomkartbackend.DAO.CartDAO;
import com.niit.Fcomkartbackend.DAO.ShippingaddressDAO;
import com.niit.Fcomkartbackend.DAO.UserDAO;
import com.niit.Fcomkartbackend.Model.Cart;
import com.niit.Fcomkartbackend.Model.Shippingaddress;
import com.niit.Fcomkartbackend.Model.User;

@Controller
public class ShippingaddressController {

	private static final String emailId = null;

	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private Cart cart;

	@RequestMapping("/Cart/newshippingaddress")
	public ModelAndView newShippingaddress(){
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedShippingaddress", "true");
		return mv;
	}
	@RequestMapping("/Cart/addShippingaddress")
	public String addShippingaddress(Principal p, @ModelAttribute Shippingaddress shippingaddress){
		String emailId = p.getName();
		User user = userDAO.getByEmailId(emailId);
		shippingaddress.setUser(user);
		shippingaddress.setEmailId(emailId);
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";	
	}
	
	@RequestMapping("/Cart/proceed")
	public String Proceed(Principal p, Model model){
		String emailId = 	p.getName();
		List<Shippingaddress> shippingList = shippingaddressDAO.list(emailId);
		System.out.println(shippingList.size());
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("isUserClickedViewShippingaddress", true);
	 return "home";
	}
	
	@RequestMapping("/Cart/shippingaddress")
	public String shippingAddress(@RequestParam("shippingId") int shippingId, Principal p, Model model){
		
		String emailId = p.getName();
		
		
		model.addAttribute("thankyou", true);
		
		List<Cart> cartList = cartDAO.getByEmailId(emailId);
		
		for(Cart c : cartList){
			c.setShippingId(shippingId);
			cartDAO.saveOrUpdate(c);
		}
		
		return "home";
		
	}
	@RequestMapping("/Cart/deleteshippingaddress")
	public String deleteshippingAddress(@RequestParam("shippingId") int shippingId, Model model){
		shippingaddressDAO.delete(shippingId);
		return "redirect:proceed";
		
	}
	@RequestMapping("/Cart/editshippingaddress")
	public String editshippingAddress(@RequestParam("shippingId")int shippingId,Model model){
	Shippingaddress shippingaddress=shippingaddressDAO.getByShippingId(shippingId);
		model.addAttribute("shippingaddress", shippingaddress);
		model.addAttribute("editshippingaddressClicked", true);
		return "home";
		
	}
	@RequestMapping("editShippingaddress")
	public String editShippingAddress(Principal p, @ModelAttribute Shippingaddress shippingaddress, Model model){
		
		String emailId = p.getName();
		User user = userDAO.getByEmailId(emailId);
		
		shippingaddress.setEmailId(emailId);
		shippingaddress.setUser(user);
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
	}
	
	@RequestMapping("/Cart/deliverhere/{shippingId}")
	public String deliverhere(@PathVariable("shippingId") int shippingId, Principal p, Model model,HttpSession session){
		String emailId = p.getName();
		List<Cart> cartList = cartDAO.getByEmailId(emailId);
		
		for(Cart c : cartList){
			c.setShippingId(shippingId);
			cartDAO.saveOrUpdate(c);
			
		
		}
		session.setAttribute("shipping",shippingaddressDAO.getByShippingId(shippingId));
		
		return "payment";
		
		
	}
	
	@RequestMapping("payment")
	public String payment(HttpSession session,Model model){
		String username = (String) session.getAttribute("username");
		int GrandTotal =0;
		int id=0;
		 List<Cart> cartList = cartDAO.getByEmailId(emailId);
		
		 for(Cart c : cartList){
			 cart.setTotal(cart.getPrice()*cart.getQty());
			id = c.getCartId();
		}
		if(GrandTotal<1000)
		{
			GrandTotal = GrandTotal+50;
		}
		model.addAttribute("id", id);
		 model.addAttribute("GrandTotal", GrandTotal);
		 /*model.addAttribute("isUserClickedPayment", true);*/
		return"user";
	}
	
	@RequestMapping("receipt")
	public String receipt(Model model,Principal p) {
		String emailId = p.getName();
		User user = userDAO.getByEmailId(emailId);
		List<Cart> cartList = cartDAO.getByEmailId(emailId);
		Long GrandTotal = cartDAO.getTotalAmount(user.getUserId());
		model.addAttribute("GrandTotal", GrandTotal);
		Date date=new Date();
		model.addAttribute("date",date);
		model.addAttribute("cart",cartList);
		return "receipt";
	}
	
	
	@RequestMapping("thankyou")
	public String cash(Principal p,Model model) {
		String emailId = p.getName();
		User user = userDAO.getByEmailId(emailId);
		List<Cart> cartList = cartDAO.getByEmailId(emailId);
		
		model.addAttribute("isUserClickedthankyou", true);
		return "thankyou";
	}
	}
		


