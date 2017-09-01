package com.niit.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.Fcomkartbackend.DAO.CartDAO;
import com.niit.Fcomkartbackend.DAO.ProductDAO;
import com.niit.Fcomkartbackend.DAO.UserDAO;
import com.niit.Fcomkartbackend.Model.Cart;
import com.niit.Fcomkartbackend.Model.Product;
import com.niit.Fcomkartbackend.Model.User;

@Controller
public class CartController {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	UserDAO userDAO;
	 
	@Autowired
	User user;
	
	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;
	
	@RequestMapping("/Cart/myCart")
	public String myCart(Model model, Principal p){
	String emailId =	p.getName();
	User user = userDAO.getByEmailId(emailId);
	 List<Cart> cartList = cartDAO.getByEmailId(emailId);
	 int length=cartList.size();
	 model.addAttribute("cartlength", length);
	 System.out.println(length);
	 Long GrandTotal = cartDAO.getTotalAmount(user.getUserId());
	 model.addAttribute("cartList", cartList);
	 model.addAttribute("isUserClickedMyCart", true);
	 model.addAttribute("GrandTotal", GrandTotal);
		return "home";
		
	}
	
	@RequestMapping("/Cart/addtocart")
	public String addCart(@RequestParam("productId") int productId, Principal p, Model model){
		
		Product product = productDAO.getByProductId(productId);		
		User user = userDAO.getByEmailId(p.getName());		
		//Cart cart = cartDAO.getByUserandProduct(p.getName(), productId);
			if(product.getStock() > 0 ){
			
			if(cartDAO.itemAlreadyExist(p.getName(), productId, true)){
				int quantity = cart.getQty() + 1;
				cart.setQty(quantity);
				cart.setTotal(product.getPrice() * quantity);
				cartDAO.saveOrUpdate(cart);
			}
			else{
				
		
		Random t = new Random();
		int day = 2 + t.nextInt(7);
		
		cart.setEmailId(p.getName());
		cart.setPrice(product.getPrice());
		cart.setProductId(productId);
		cart.setProductName(product.getProductName());
		cart.setQty(1);
		cart.setStatus("N");
		cart.setUserId(user.getUserId());
		cart.setUserName(user.getUserName());
		cart.setDays(day);
		cart.setTotal(product.getPrice()*cart.getQty());
		cartDAO.saveOrUpdate(cart);
			}
		int stc = product.getStock() - 1;
		product.setStock(stc);
		
		productDAO.saveOrUpdate(product);
			
		return "redirect:myCart";
		}
		else {
			model.addAttribute("product", product);
			model.addAttribute("isUserClickedMoreDetails", true);
			model.addAttribute("message", "Out of stock");
			return "login";
		}
	}
	
	@RequestMapping("/Cart/removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model){
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());
		
		int qty = product.getStock() + cart.getQty();
		
		product.setStock(qty);
		productDAO.saveOrUpdate(product);
		
		cartDAO.delete(cartId);
		return "redirect:myCart";
	}
	
	@RequestMapping("/Cart/decreaseQty")
	public String decreaseQty(@RequestParam("cartId") int cartId,HttpSession session,Model model){
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());if(cart.getQty()>1){
		Date d1 = new java.sql.Date(new java.util.Date().getTime());
		cart.setAddDate(d1);
		cart.setQty(cart.getQty()-1);
		cart.setTotal(product.getPrice()*cart.getQty());
		product.setStock(product.getStock()+1);
		
		}
		else{
			cart.setQty(1);
		}
		
		productDAO.saveOrUpdate(product);
		cartDAO.saveOrUpdate(cart);
		return "redirect:myCart";
	}
	
	@RequestMapping("/Cart/increaseQty")
	public String increaseQty(@RequestParam("cartId") int cartId,HttpSession session,Model model){
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());
		cart.setQty(cart.getQty()+1);
		Date d1 = new java.sql.Date(new java.util.Date().getTime());
		cart.setAddDate(d1);
		cart.setTotal(product.getPrice()*cart.getQty());
		product.setStock(product.getStock()-1);
		productDAO.saveOrUpdate(product);
		cartDAO.saveOrUpdate(cart);
				
		return "redirect:myCart";
	}
	
}