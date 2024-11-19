package com.cjc.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.Product;
import com.cjc.main.serviceI.HomeService;

@Controller
public class HomeController 
{
	@Autowired
	HomeService hs;
	 
	@RequestMapping("/")
	public String preLogin()
	{
		return "login";
	}
	@RequestMapping("/log")
    public String adView(@RequestParam("uname") String uname, @RequestParam("pass") String pass, Model m) {
        
        if (uname.equals("admin") && pass.equals("admin")) 
        {
            return "adminView"; 
        } 
        else 
        {
            m.addAttribute("error", "Invalid username or password!");
            return "login"; 
        }
    }
	
	
    @RequestMapping("/addprd")
    public String add()
    {
    	return "addProduct";
    }
    
    @RequestMapping("/add")
    public String addProduct(@ModelAttribute Product p)
    {
    	hs.saveData(p);
    	return "adminView";
    }
    
    
    @RequestMapping("/viewprd")
    public String viewProduct(Model m) 
    {
   
    	Iterable<Product> lp=hs.displayAll();
    	m.addAttribute("data", lp);
    	return "viewProduct";
    }
    
    @RequestMapping("/delete")
    public String deleteProduct(@ModelAttribute Product p,Model m)
    {
    	hs.deleteProduct(p);
    	Iterable<Product> lp=hs.displayAll();
    	m.addAttribute("data", lp);
    	return "viewProduct";
    }
    
    @RequestMapping("/edit")
    public String editProduct(@RequestParam("productId") int productId, Model m)
    {
    	Product p=hs.editProduct(productId);
    	m.addAttribute("data", p);
    	return "edit";
    }
    
    @RequestMapping("/update")
    public String updateProduct(@ModelAttribute Product p,Model m)
    {
    	hs.saveData(p);
    	Iterable<Product> lp=hs.displayAll();
    	m.addAttribute("data", lp);
    	return "viewProduct";
    }
}
