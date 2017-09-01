package com.niit.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.niit.Fcomkartbackend.DAO.ProductDAO;
import com.niit.Fcomkartbackend.Model.Product;
import com.niit.exception.ProductNotFoundException;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDAO productDAO;
	
	
	@RequestMapping({"/","home"})
	public ModelAndView HOME(HttpSession session) {

		List<Product> ProductList = productDAO.list();
		System.out.println(ProductList.size());
		session.setAttribute("Productlist", ProductList);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("/afterlogin")
	public ModelAndView HOME1() {

		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("/loginpage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("isUserClickedLogin", true);
		return mv;
	}
	@RequestMapping("aboutus")
	public ModelAndView Aboutus() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title","Aboutus");
		mv.addObject("isUserClickedAboutus", "true");
		return mv;
	}
	@RequestMapping("user")
	public ModelAndView User() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedSignup", "true");
		return mv;
	}
	
	@RequestMapping("login")
	public ModelAndView Login() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title","Login");
		mv.addObject("isUserClickedLogin", "true");
		return mv;
	}
		
	@RequestMapping("all/signup")
	public ModelAndView Signup() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title","Signup");
		mv.addObject("isUserClickedSignup", "true");
		return mv;
	}
		
		
		@RequestMapping("supplier")
		public ModelAndView Supplier() {

			ModelAndView mv = new ModelAndView("home");
			mv.addObject("title","Supplier");
			mv.addObject("isUserClickedSupplier", "true");
			return mv;
		}
		
		@RequestMapping("category")
		public ModelAndView Category() {

			ModelAndView mv = new ModelAndView("home");
			mv.addObject("title","Category");
			mv.addObject("isUserClickedCategory", "true");
			return mv;
		}
		
		@RequestMapping("product")
		public ModelAndView Product() {

			ModelAndView mv = new ModelAndView("home");
			mv.addObject("title","Product");
			mv.addObject("isUserClickedProduct", "true");
			return mv;
		}
		
		@RequestMapping("MoreDetails/{id}")
		public ModelAndView ProductDescription(@PathVariable int id,Model model)throws ProductNotFoundException
 {
			Product product = productDAO.getByProductId(id);
			if(product==null) throw new ProductNotFoundException(); 

			model.addAttribute("product", product);
			model.addAttribute("id", id);
			ModelAndView mv = new ModelAndView("home");
			mv.addObject("isUserClickedMoreDetails", "true");
			return mv;
			
		}
		
		
}
