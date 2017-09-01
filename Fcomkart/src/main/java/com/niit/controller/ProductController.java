package com.niit.controller;
import java.util.List;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import com.niit.Fcomkartbackend.DAO.ProductDAO;
import com.niit.Fcomkartbackend.Model.Category;
import com.niit.Fcomkartbackend.Model.Product;
import com.niit.Fcomkartbackend.Model.Supplier;
import com.niit.Fcomkartbackend.DAO.CategoryDAO;
import com.niit.Fcomkartbackend.DAO.SupplierDAO;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/admin/product/addproduct")
	
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("home");
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		mv.addObject("isUserClickedProduct", "true");
		return mv;
	}
	@RequestMapping("/admin/product/newProduct")
	public String newProduct(@ModelAttribute Product product,Model model,@RequestParam("pimage") MultipartFile filedet) {
		
		
		productDAO.saveOrUpdate(product);
		System.out.println("-------Image Insert Start--------");

		String path = "C:\\Users\\Welcome\\eclipse-workspace\\Fcomkart\\src\\main\\webapp\\WEB-INF\\resources\\product\\";

		String fileinfo = path + product.getProductId() + ".jpg";

		File f = new File(fileinfo);

		if (!filedet.isEmpty()) {
			try {
				byte buff[] = filedet.getBytes();
				FileOutputStream fos = new FileOutputStream(f);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(buff);
				bs.close();
				fos.close();
			} catch (Exception e) {
				System.out.println("Exception Arised");
			}
		} else {
			System.out.println("---File Uploding Problem---");
		}

		System.out.println("-------Image insert Success------");

		boolean flag = false;
		model.addAttribute("flag", flag);
		
		return "redirect:viewproduct";
	}
	
	

	@RequestMapping("/admin/product/viewproduct")
	public String viewproduct(Model model) {
		List<Product> ProductList = productDAO.list();
		model.addAttribute("ProductList", ProductList);
		model.addAttribute("isUserClickedViewProduct", true);
		System.out.println(ProductList.size());
			return "home";
	}
	
	@RequestMapping("/admin/product/deleteProduct")
	public String deleteProduct(@RequestParam("productId") int productId, Model model){
		
		productDAO.delete(productId);
		return "redirect:viewproduct";
	}
	
	@RequestMapping("/admin/product/editproduct")
	public String editProduct(@RequestParam ("productId") int productId, Model model){
		Product product = productDAO.getByProductId(productId);
		model.addAttribute("product", product);
		model.addAttribute("editproductClicked", true);
		return "editproduct";
	
	}
	@RequestMapping("/admin/product/productEdited")
	public String productEdited(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		return "redirect:viewproduct";
		
	}

}

