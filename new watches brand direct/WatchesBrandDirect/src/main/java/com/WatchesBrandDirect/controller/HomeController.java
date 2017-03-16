package com.WatchesBrandDirect.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.WatchesBrandDirect.Service.CategoryService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	public HomeController(){
		System.out.println("Creating instance for home controller");
		
	}
	@RequestMapping("/home")
	public String home(HttpSession session) 
	{
		session.setAttribute("categories", categoryService.getCategories());
	return "home";
	}
	
	@RequestMapping("/contactus")
	public String contactUs() 
	{
	return "ContactUs";
	}
	@RequestMapping("/admin/product/contactus")
	public String contactUs1() 
	{
	return "ContactUs";
	}
	@RequestMapping("/all/product/contactus")
	public String contactUsall() 
	{
	return "ContactUs";
	}
	@RequestMapping("/all/product/home")
	public String homeall() 
	{
	return "home";
	}
	@RequestMapping("/admin/product/home")
	public String homeAdmin() 
	{
	return "home";
	}
	@RequestMapping("/login")
	 public String login(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
			Model model){
		System.out.println("login controller");
		if(error!=null)
			model.addAttribute("error","Invalid UserName or Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");
	
	return "login";
	}
	
	
}

