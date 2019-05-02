<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>升级失败</title>
        <link rel="stylesheet" href="logincss/style2.css">
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
              <h1>升级失败!</h1>  <br><br>
              很遗憾，您未能通过答题升级。
             请:  <p class="tip"><span>返回前页</span></p> <br>                                  
               <input type="button" style= "width:70px;height:40px;color:orange;background-color:blue;" value="返回" onclick="javascript:window.location='${pageContext.request.contextPath }/login'"><br>
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

