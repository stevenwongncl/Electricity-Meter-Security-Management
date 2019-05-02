<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>注册成功</title>
        <link rel="stylesheet" href="logincss/style2.css">
        <% String name=request.getParameter("name"); %>
    </head>
    <body>
        <header>
            <nav class="b_clear">
                <div class="nav_logo l_float">
                    <img src="imgs/logo.svg" alt="">
                </div>
                <div class="nav_link r_float">
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="login_body l_clear">
                <div class="login_form l_float">
              <h1>注册成功!</h1>  <br><br>
              
             您现在的角色权限级别为: <a href="">普通用户</a> <br>
             可以进行查看电表信息、安全动态信息等基本操作，但会有所限制，操作员将会解锁大部分功能<br>
             转为 <a href="">操作员</a> 需要     <p class="tip"><span>答题通过</span></p> 或者      <p class="tip"><span>邀请码验证</span></p> <br>                                                         
                                <input type="button" style= "width:50px;height:40px;color:orange;background-color:blue;" value="邀请码" onclick="javascript:window.location='${pageContext.request.contextPath }/login'" >
                                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                 <input type="button" style= "width:70px;height:40px;color:orange;background-color:blue;" value="答题通过" onclick="javascript:window.location='${pageContext.request.contextPath }/upgdAnsw?name=<%=name %>'" ><br>
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

