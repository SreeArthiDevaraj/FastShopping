package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import com.niit.Fcomkartbackend.DAO.CategoryDAO;
import com.niit.Fcomkartbackend.Model.Category;
import com.niit.Fcomkartbackend.Model.Product;
import com.niit.Fcomkartbackend.Model.Supplier;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/admin/category/addcategory")
	public String addcategory(Model model) 
	{
		
		model.addAttribute("isUserClickedCategory", true);
		return "home";
		
	}

	@RequestMapping("/admin/category/newCategory")
	public String newProduct(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		return "redirect:viewcategory";
	}
	
	@RequestMapping("/admin/category/viewcategory")
	public String viewproduct(Model model) {
		List<Category> CategoryList = categoryDAO.list();
		model.addAttribute("CategoryList", CategoryList);
		model.addAttribute("isUserClickedViewCategory", true);
		System.out.println(CategoryList.size());
			return "home";
	}
	
	@RequestMapping("/admin/category/deleteCategory")
	public String deleteCategory(@RequestParam("categoryId") int categoryid, Model model){
		
		categoryDAO.delete(categoryid);
		return "redirect:viewcategory";
	}
	@RequestMapping("/admin/category/editCategory")
	public String editcategory(@RequestParam ("categoryId") int categoryId, Model model){
		Category category = categoryDAO.getByCategoryId(categoryId);
		model.addAttribute("category", category);
		model.addAttribute("editCategoryClicked", true);
		return "editCategory";
	
	}
	@RequestMapping("/admin/category/categoryEdited")
	public String categoryEdited(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		return "redirect:viewcategory";
}
}
