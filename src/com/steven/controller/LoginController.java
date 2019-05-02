package com.steven.controller;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.steven.service.RoleService;
import com.steven.util.HttpClientUtil;

@Controller
@RequestMapping("")
public class LoginController {
	
	
	/* 账号密码登录*/
	@RequestMapping(value="/login",method=RequestMethod.POST) 
	public String login(HttpServletRequest request, HttpSession hsession,Model model,String name, String password,String rememberMe) {		
		boolean rmbm=false;
        Subject subject = SecurityUtils.getSubject();  
        UsernamePasswordToken token = new UsernamePasswordToken(name, password);  
   	    String verifyCode = request.getParameter("verifyCode");
	    String sessionVerifyCode = (String) hsession.getAttribute("verifyCodeValue");
        System.out.println("记住密码的值为："+rememberMe);
        try {  
        	if(rememberMe.contentEquals("false,rememberMe")){
        		rmbm=true;
        	} 
        	token.setRememberMe(rmbm);
        	Session session=subject.getSession();
    		 if (verifyCode.equalsIgnoreCase(sessionVerifyCode)) {
  		        System.out.println("验证码正确");		        
  	            subject.login(token);
  	            if( subject.hasRole("admin")){           
  	            session.setAttribute("subject", subject);
  	            return "tables";
  	          } else {
  	        	  System.out.println("权限不匹配");
  	        	  return "login";
  	          }
  		 } else {
  			 System.out.println("验证码不正确");
  			 model.addAttribute("error", "验证码错误"); 
  			 return "login";
  		 }
    		
            
        } catch (AuthenticationException e) {  
            model.addAttribute("error", "用户名或密码错误");  
            return "login"; 
        }  
	}
	
	 /* 获取校验码 */
    @RequestMapping(value="/getVerifyCode")
    public void generate(HttpServletResponse response, HttpSession session) {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        String verifyCodeValue = drawImg(output);
        System.out.println("后台传来的验证码为："+verifyCodeValue);
        // 将校验码保存到session中
        session.setAttribute("verifyCodeValue", verifyCodeValue);
        
        try {
            ServletOutputStream out = response.getOutputStream();
            output.writeTo(out);
        } catch (IOException e) {
       //     logger.info("<--验证码前端写出.出现异常-->");
            e.printStackTrace();
        }
    }

    /* 绘制验证码 */
    private String drawImg(ByteArrayOutputStream output) {
        String code = "";
        // 随机产生4个字符
        for (int i = 0; i < 4; i++) {
            code += randomChar();
        }
        int width = 70;
        int height = 25;
        BufferedImage bi = new BufferedImage(width, height,
                BufferedImage.TYPE_3BYTE_BGR);
        Font font = new Font("Times New Roman", Font.PLAIN, 20);
        // 调用Graphics2D绘画验证码
        Graphics2D g = bi.createGraphics();
        g.setFont(font);
        Color color = new Color(66, 2, 82);
        g.setColor(color);
        g.setBackground(new Color(226, 226, 240));
        g.clearRect(0, 0, width, height);
        FontRenderContext context = g.getFontRenderContext();
        Rectangle2D bounds = font.getStringBounds(code, context);
        double x = (width - bounds.getWidth()) / 2;
        double y = (height - bounds.getHeight()) / 2;
        double ascent = bounds.getY();
        double baseY = y - ascent;
        g.drawString(code, (int) x, (int) baseY);
        g.dispose();
        try {
            ImageIO.write(bi, "jpg", output);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return code;
    }

    /* 获取随机参数 */
    private char randomChar() {
        Random r = new Random();
        String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
        return s.charAt(r.nextInt(s.length()));
    }

    public static int getRandNum(int min, int max) {
        int randNum = min + (int)(Math.random() * ((max - min) + 1));
        return randNum;
    }

    /* 手机验证码发送 */
    @RequestMapping(value="/sentMsg") 
    public String sentMsg(@RequestParam String smsMob,HttpSession hsession){
    	
    	System.out.println("获取到的手机号为："+smsMob);
    	
    	//手机验证码用户名账号
        final String Uid = "wjl96";
    		
    	//手机验证码密钥
    	final String Key = "d41d8cd98f00b204e980";
    	
    	//生成验证码
    	int intervnum=getRandNum(1, 999999);
    	
    	String randomnum=String.valueOf(intervnum);
    		
    	//手机返回验证码信息和签名内容
    	String smsText = "欢迎使用上海电力大学智能电表信息管理系统，本次登录的验证码为："+randomnum+"【智能电表系统】";
    	
    	System.out.println("短信内容为："+smsText);
    	
        HttpClientUtil client = HttpClientUtil.getInstance();
		
		int result = client.sendMsgUtf8(Uid, Key, smsText, smsMob);
		
		hsession.setAttribute("smsMob", smsMob);
		
		hsession.setAttribute("randomnum", randomnum);
		System.out.println("session中的手机号:"+hsession.getAttribute("smsMob"));
		System.out.println("session中的验证码"+hsession.getAttribute("randomnum"));
		
		if(result>0){
			System.out.println("UTF-8:"+result);
		}else{
			System.out.println(client.getErrorMsg(result));
		}
		
		return "sentMsg";
    }
    
    /* 手机验证码登录 */
    @RequestMapping(value="/msgLogin") 
    public String msgLogin(@RequestParam String phoVerify,HttpSession hsession,Model model){
    	if(phoVerify.equals(hsession.getAttribute("randomnum"))){
    	return "index";
    	}
    	else {
    	//	model.addAttribute("error", "验证码错误"); 
 			return "login";
    	}
    }
    
    
}

