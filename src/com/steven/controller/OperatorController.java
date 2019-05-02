package com.steven.controller;

import java.util.List;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.steven.entity.Meters;
import com.steven.entity.Operators;
import com.steven.entity.Ptyh;
import com.steven.service.OperatorService;




@Controller
@RequestMapping("")
public class OperatorController {
	
	@Autowired
	OperatorService operatorService;
    

	
	   @RequestMapping(value="/tables",method=RequestMethod.GET)
	    public String example(ModelMap map,Model model,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo){
		   Integer pageSize=3;//每页显示记录数
	        PageHelper.startPage(pageNo, pageSize);
		   List<Operators> cs = operatorService.olist();//获取所有用户信息	
	        PageInfo<Operators> pageInfo=new PageInfo<Operators>(cs);
	        map.addAttribute("pageInfo", pageInfo);
	       model.addAttribute("cs", cs);
	       model.addAttribute("pageInfo", pageInfo);
	        return "tables";
	     
	    }
	   
	   @RequestMapping("deleteOperator")
		public ModelAndView deleteOperator(@RequestParam String ono) {
			operatorService.delete(ono);
			final ModelAndView mav = new ModelAndView("redirect:/tables");
			return mav;
		}
	   
	
	   @RequestMapping("addOperator")
	   public ModelAndView addOperator(@RequestParam String num,@RequestParam String name,@RequestParam String email,@RequestParam String phone,
			   @RequestParam String ques,@RequestParam String answ,@RequestParam String password){
		   operatorService.add(num,name,email,phone,ques,answ,password);
		   final ModelAndView mav = new ModelAndView("redirect:/tables");
			return mav;
	   }
	   
	   @RequestMapping("getOprByName")
		public ModelAndView getAttendanceBySno(@RequestParam String oname){
			operatorService.getOprByName(oname);
			final ModelAndView mav=new ModelAndView("redirect:/tables");
			final List<Operators> cs =operatorService.getOprByName(oname);
		    mav.addObject("cs", cs);
			mav.setViewName("tables");
			return mav;
			
		}
	   
	   @RequestMapping("updateOperator")
	   public ModelAndView updateOperator(@RequestParam String ono){		  
		   String ostate=operatorService.getStateByOno(ono);
		   if(ostate.equals("yes")){
			   operatorService.updateOperator("no",ono);
		   }
           if(ostate.equals("no")){
        	   operatorService.updateOperator("yes",ono);   
		   }
           final ModelAndView mav = new ModelAndView("redirect:/tables");
			return mav;
	   }
	   
	   //普通用户：
	   
	   @RequestMapping(value="/ptyh",method=RequestMethod.GET)
	    public String ptyh(ModelMap map,Model model,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo){
		   Integer pageSize=3;//每页显示记录数
	        PageHelper.startPage(pageNo, pageSize);
		   List<Ptyh> cs = operatorService.plist();//获取所有用户信息	
	        PageInfo<Ptyh> pageInfo=new PageInfo<Ptyh>(cs);
	        map.addAttribute("pageInfo", pageInfo);
	       model.addAttribute("cs", cs);
	       model.addAttribute("pageInfo", pageInfo);
	        return "ptyh";
	     
	    }
	   
	   @RequestMapping("getPtyhByName")
	 		public ModelAndView getPtyhByName(@RequestParam String pname){
	 			operatorService.getPtyhByName(pname);
	 			final ModelAndView mav=new ModelAndView("redirect:/ptyh");
	 			final List<Ptyh> cs =operatorService.getPtyhByName(pname);
	 		    mav.addObject("cs", cs);
	 			mav.setViewName("ptyh");
	 			return mav;
	 			
	 		}
	   
	   @RequestMapping("updatePtyh")
	   public ModelAndView updatePtyh(@RequestParam String pno){		  
		   String pstate=operatorService.getStateByPno(pno);
		   if(pstate.equals("yes")){
			   operatorService.updatePtyh("no",pno);
		   }
           if(pstate.equals("no")){
        	   operatorService.updatePtyh("yes",pno);   
		   }
           final ModelAndView mav = new ModelAndView("redirect:/ptyh");
			return mav;
	   }
	   
	   @RequestMapping("deletePtyh")
		public ModelAndView deletePtyh(@RequestParam String pno) {
			operatorService.deletePtyh(pno);
			final ModelAndView mav = new ModelAndView("redirect:/ptyh");
			return mav;
		}
	   
	   @RequestMapping(value="/addptyh",method=RequestMethod.POST)
	   public ModelAndView addptyh(@RequestParam String num,@RequestParam String name,@RequestParam String email,@RequestParam String phone,
			   @RequestParam String ques,@RequestParam String answ,@RequestParam String password){
		   String passwordEncoded = new SimpleHash("md5",password,"wjl",2).toString();
		   operatorService.addPtyh(num,name,email,phone,ques,answ,passwordEncoded);
		   final ModelAndView mav = new ModelAndView("redirect:/twoUpgrade?name="+name);
			return mav;
	   }
	   
	   @RequestMapping(value="/meters",method=RequestMethod.GET)
	    public String meters(Model model){
		   List<Meters> zs = operatorService.emzlist();//获取所有电表信息
		   List<Meters> als = operatorService.emalist();//获取所有A相电表信息
		   List<Meters> bs = operatorService.emblist();//获取所有B相电表信息
		   List<Meters> cs = operatorService.emclist();//获取所有c相电表信息
		   model.addAttribute("zs", zs);
		   model.addAttribute("als", als);
		   model.addAttribute("bs", bs);
	       model.addAttribute("cs", cs);
	        return "meters";
	     
	    }
	   
	   @RequestMapping("cxdb")
	 		public String cxdb(Model model,@RequestParam String timenow1,@RequestParam String timenow2,
	 				@RequestParam String seqnumber){
		        String timenow=timenow1+" "+timenow2;
		        System.out.println("时间为："+timenow);
		        System.out.println("序号为："+seqnumber);
		        if("2019-2-12 20:50:00".equals(timenow)){
		        	System.out.println("时间相等");
		        } else {
		        	System.out.println("时间不相等");
		        }
		        
		        if("2".equals(seqnumber)){
		        	System.out.println("序号相等");
		        } else {
		        	System.out.println("序号不相等");
		        }
	 			 List<Meters> zs = operatorService.emzlistsear(timenow,seqnumber);//获取所有电表信息
	 			 List<Meters> als = operatorService.emalistsear(timenow,seqnumber);//获取所有A相电表信息
	 			 List<Meters> bs = operatorService.emblistsear(timenow,seqnumber);//获取所有B相电表信息
	 			 List<Meters> cs = operatorService.emclistsear(timenow,seqnumber);//获取所有c相电表信息
	 		     model.addAttribute("zs", zs);
			     model.addAttribute("als", als);
			     model.addAttribute("bs", bs);
		        model.addAttribute("cs", cs);
	 			return "meters";	 			
	 		}
	   
	   @RequestMapping(value="/upgdAnsw",method=RequestMethod.POST)
	   public String upgdAnsw(Model model,@RequestParam String name,@RequestParam String num1,@RequestParam String num2,@RequestParam String num3,@RequestParam String num4,@RequestParam String num5,@RequestParam String num6,@RequestParam String num7,@RequestParam String num8,@RequestParam String num9,@RequestParam String num10){
		  if(compareAnsw(num1,num2,num3, num4, num5, num6, num7, num8, num9, num10)==true){
			  model.addAttribute("name", name);
			  return "succUpgrade";
		  } else {
			return "failUpgrade";
		  }
	   }
	   
	   @RequestMapping("upgrade")
		public String upgrade(String name){
		   System.out.println("到upgrade了");
	      	operatorService.upgrade(name);
	      	return "login";
		}

	private boolean compareAnsw(String num1, String num2, String num3,String num4, String num5, String num6,String num7, String num8, String num9,String num10) {
		String[] a = {num1,num2,num3,num4, num5, num6, num7, num8, num9, num10};
		String[] b = {"B","A","D","B","C","D","A","A","B","C"};
		int count=0;
		for(int i=0;i<b.length;i++){
			if(a[i].contentEquals(b[i])){
				count++;
				System.out.println("相同值为："+a[i]);
				System.out.println("第"+(i)+"次循环，count的值为"+count);
			}
			
		}
		if(count>=7){

		return true;
		} else {
			return false;
		}
		
	}

}
