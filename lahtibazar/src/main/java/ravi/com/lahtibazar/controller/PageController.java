package ravi.com.lahtibazar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lahtibazarbackend.dao.CategoryDAO;
import lahtibazarbackend.dto.Category;



@Controller
public class PageController {
	
    @Autowired
	private CategoryDAO categoryDAO;
	
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Home");
		mv.addObject("userClickHome",true);
		
		return mv;
	}
	
	
	@RequestMapping(value= "/shoppage")
	public ModelAndView shop() {
		
		ModelAndView mv=new ModelAndView("shop");
		mv.addObject("title","Shop");
		mv.addObject("userClickShop",true);
		
		return mv;
	}
	
	
	
	@RequestMapping(value= "/singleproduct")
	public ModelAndView singleproduct() {
		
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title","Singleproduct");
		mv.addObject("userClickSingleproduct",true);
		
		return mv;
	}
	
	
	@RequestMapping(value= "/cart")
	public ModelAndView cart() {
		
		ModelAndView mv=new ModelAndView("singleproduct");
		mv.addObject("title","Cart");
		mv.addObject("userClickCart",true);
		
		return mv;
	}
	
	
	
	@RequestMapping(value= "/categorypage")
	
	public ModelAndView cat() {
		
		ModelAndView mv=new ModelAndView("category");
		mv.addObject("title","Cate");
		mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickCat",true);
		
		return mv;
	}
	
	/*
	 * Method to load all the products and based on category
	 * */

	@RequestMapping(value= "/show/all/products")
	public ModelAndView showAllProducts() {
		
		ModelAndView mv=new ModelAndView("category");
		mv.addObject("title","Cate");
		mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickAllProducts",true);
		
		return mv;
	}
	
	@RequestMapping(value= "/show/category/{id}products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		
		ModelAndView mv=new ModelAndView("category");
		//categoryDAO to fetch single category
		Category category=null;
		category=categoryDAO.get(id);
		mv.addObject("title",category.getName());
		//passing the list categories
		mv.addObject("categories",categoryDAO.list());
		//passing the single category object
		mv.addObject("category",category);
		mv.addObject("userClickCategoryProducts",true);
		
		return mv;
	}
	
/*	@RequestMapping(value="/test")
	public ModelAndView test(@RequestParam(value="greeting",required=false)String greeting) {
		if(greeting==null) {
			greeting="i love my india";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
	
	/*@RequestMapping(value="/test/{greeting}")
	public ModelAndView test(@PathVariable("greeting")String greeting) {
		if(greeting==null) {
			greeting="i love my india";
		}
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("greeting",greeting);
		return mv;
	}*/

}
