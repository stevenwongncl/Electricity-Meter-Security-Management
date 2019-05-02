package com.steven.controller;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class PageController {
	
	@RequestMapping(value="/login",method=RequestMethod.GET)  
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/addptyh",method=RequestMethod.GET)  
	public String addptyh(){
		return "addptyh";
	}
	
	@RequestMapping(value="/twoUpgrade")  
	public String twoUpgrade(){
		return "twoUpgrade";
	}
	
/*	@RequiresRoles("admin")
	@RequestMapping(value="/index")  
	public String index(){
		return "index";
	}*/
	
	@RequiresRoles("admin")
	@RequestMapping("tables")
	public String tables(){
		return "tables";
	}
	
	@RequiresRoles("oper")
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	@RequiresRoles("ptyh")
	@RequestMapping("ptyh")
	public String ptyh(){
		return "ptyh";
	}
	
	@RequestMapping(value="/upgdAnsw",method=RequestMethod.GET)  
	public String upgdAnsw(){
		return "upgdAnsw";
	}
	
	@RequestMapping("overAnsw")
	public String overAnsw(){
		return "overAnsw";
	}
	
	@RequestMapping("failUpgrade")
	public String failUpgrade(){
		return "failUpgrade";
	}
	
	@RequestMapping("succUpgrade")
	public String succUpgrade(){
		return "succUpgrade";
	}


}
