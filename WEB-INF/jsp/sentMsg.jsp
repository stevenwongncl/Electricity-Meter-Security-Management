<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>智能电表信息系统登录</title>
        <link rel="stylesheet" href="logincss/style.css">
    </head>
    <body>
        <header>
            <nav class="b_clear">
                <div class="nav_logo l_float">
                    <img src="imgs/logo.svg" alt="">
                </div>
                <div class="nav_link r_float">
                    <ul>
                        <li><a href="#">返回首页</a></li>
                        <li><a href="#">关于我们</a></li>
                        <li><a href="#">联系我们</a></li>

                    </ul>
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="login_body l_clear">
                <div class="login_form l_float">
                    <div class="login_top">
                        <img src="imgs/logo_z.svg" alt="" class="">
                        
                        <div class="login_tags b_clear">
                            <span class="top_tag l_float active" onClick="PwdLogin()">密码登录</span>
                            <span class="top_tag r_float" onClick="QrcodeLogin()">手机登录</span>
                        </div>
                    </div>
                    
                    <div class="login_con hidden">
                        <form action="login" method="post">
                            <div>
                                <label for="user_name">账号</label>
                                <input type="text" name="name" placeholder="学号/工号/管理员号" maxlength="8" onKeyUp="value=value.replace(/[\W]/g,'')">
                                <img src="imgs/icons/user.svg">
                                <p class="tips hidden">请检查您的账号</p>
                            </div>
                            <div>
                                <label for="user_pwd">密码</label>
                                <input type="password" name="password" placeholder="密码" maxlength="12" onkeyup = "value=value.replace(/[^\d]/g,'')">
                                <img src="imgs/icons/lock.svg">
                                <p class="tips hidden">请检查您的密码</p>
                            </div>
                            <div class="v_ali">     
                            <input type="hidden" name="rememberMe" value="false">                                                                         
                                                                                                七天内自动登录：&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="rememberMe" value="rememberMe" style="display:inline"><br>
                            </div>
                             <div class="v_ali">
                              <img  src="${pageContext.request.contextPath }/getVerifyCode" width="300" height="25" id="verifyCodeImage" onclick="javascript:changeImage();" style="width: 185px; ">
                            </div>
                            <div class="b_clear">
                           <input type="text" id="verifyCode" name="verifyCode" placeholder="验证码" class="l_float" maxlength="4">                                                               
                            </div>
                            <div class="b_clear submit">                               
                                <button type="submit">登&nbsp;&nbsp;录</button>
                                <a href="#" class="r_float">忘记密码？</a>
                                <p class="tips hidden">登录失败，请检查您的账户与密码</p>
                            </div>
                        </form>   
                    </div>
                     
                    <div class="login_con">
                          <div class="v_ali">
                                 <form action="sentMsg" method="post">                              
                  <div class="l_lin">                                                                                                        
                                                               欢迎用户,<%=request.getSession().getAttribute("smsMob") %>
                 </div> 
                               </form>
                               </div>
                                 <div class="v_ali">
                               <form action="msgLogin" method="post">
                                                                                                           请输入手机验证码
                               <input type="text" name="phoVerify"  id="phoVerify" placeholder="验证码" maxlength="6" onkeyup = "value=value.replace(/[^\d]/g,'')"/><br>
                               <div class="l_lin">
                               <input type="submit" value="登录" />
                               </div>
                               </form>
                               </div>
                                <p class="tip"><span>仅支持已绑定手机的账户进行快速登录</span></p>
                        </div>                      
                    </div>
                   
                    
                <div class="login_ad l_float" id="AdImg">
                </div>
                </div>
                </div>
          
            <div class="footer">
                        <p>Copyright © 2019  <a href="#">智能电表信息管理系统</a></p>
                        <a href="#" target="_blank"><img src="imgs/icons/icp_record_filing.svg" alt="工信部备案">上海电力大学</a>汪锦量制作：<a href="http://www.mycodes.net/" target="_blank">更多信息</a>
                    </div>
      <!--   </div> -->

        <script src="loginjs/login.js"></script>        
    </body>
</html>

