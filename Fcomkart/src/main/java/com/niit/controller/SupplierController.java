package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Fcomkartbackend.DAO.SupplierDAO;
import com.niit.Fcomkartbackend.Model.Supplier;


@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping("/admin/supplier/addsupplier")
	public String addsupplier(Model model) 
	{
		model.addAttribute("isUserClickedSupplier", true);
		return "home";
		
	}
	
	@RequestMapping("/admin/supplier/newSupplier")
	public String newSupplier(@ModelAttribute Supplier supplier) {
		System.out.println(supplier.getAddress());
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:viewsupplier";
	}

	
	@RequestMapping("/admin/supplier/viewsupplier")
	public String viewSupplier( Model model) {
		List<Supplier> SupplierList = supplierDAO.list();
		model.addAttribute("SupplierList", SupplierList);
		model.addAttribute("isUserClickedViewSupplier", true);
			return "home";
	}

	@RequestMapping("/admin/supplier/deleteSupplier")
	public String deleteSupplier(@RequestParam("supplierId") int supplierId, Model model){
		
		supplierDAO.delete(supplierId);
		return "redirect:viewsupplier";
	}
	@RequestMapping("/admin/supplier/editsupplier")
	public String editSupplier(@RequestParam ("supplierId") int supplierId, Model model){
		Supplier supplier = supplierDAO.getBySupplierId(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editsupplierClicked", true);
		return "editsupplier";
	
	}
	@RequestMapping("/admin/supplier/supplierEdited")
	public String supplierEdited(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:viewsupplier";
		
	}


}
