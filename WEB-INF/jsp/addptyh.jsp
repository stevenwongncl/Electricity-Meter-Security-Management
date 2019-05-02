<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>新用户注册</title> 
  <meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文,后台管理系统模版,后台模版下载,后台管理系统,后台管理模版" />
  <meta name="description" content="JS代码网提供Bootstrap模版,后台管理系统模版,后台管理界面,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="">
  <!-- Stylesheets -->
  <link href="style/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="style/font-awesome.css">
  <link href="style/style.css" rel="stylesheet">
  <link href="style/bootstrap-responsive.css" rel="stylesheet">
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon/favicon.png">
</head>

<body style="background:url(./img/photos/snowy.jpg)">

<div class="admin-form">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- Widget starts -->
            <div class="widget wred">
              <div class="widget-head">
                <i class="icon-lock"></i>信息注册
              </div>
              <div class="widget-content">
                <div class="padd">
                  
                  <form class="form-horizontal" action="addptyh" method="post">
                    <!-- Registration form starts -->
                                   
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="工号">用户号</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="num">
                                            </div>
                                          </div> 
                                           <div class="form-group">
                                            <label class="control-label col-lg-3" for="姓名">用户名</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="name">
                                            </div>
                                          </div>   
                                          <!-- Email -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">Email</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="email">
                                            </div>
                                          </div>
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="联系号码">联系号码</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="phone">
                                            </div>
                                          </div> 
                                          <!-- Select box -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3">密保问题</label>
                                            <div class="col-lg-9">                               
                                                <select class="form-control" name="ques">
                                                <option>--------------</option>
                                                <option>你最喜欢的颜色是什么？</option>
                                                <option>你最喜欢的电影是什么？</option>
                                                <option>你的大学是什么？</option>
                                                </select>  
                                            </div>
                                          </div>          
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="answ">密保答案</label>
                                            <div class="col-lg-9">
                                              <input type="text" class="form-control" name="answ">
                                            </div>
                                          </div>
                                          <!-- Password -->
                                          <div class="form-group">
                                            <label class="control-label col-lg-3" for="email">密码</label>
                                            <div class="col-lg-9">
                                              <input type="password" class="form-control" name="password">
                                            </div>
                                          </div>
                                          <!-- Accept box and button s-->
                                          <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
                                              <br />
                                              <button type="submit" class="btn btn-danger">添加</button>
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              <button type="reset" class="btn btn-success">重置</button>
                                            </div>
                                          </div>
										  <br />
                  </form>

                </div>
              </div>
                <div class="widget-foot">
                  <a href="login.html">?返回主页 </a>
                </div>
            </div>  
      </div>
    </div>
  </div> 
</div>
	
		

<!-- JS -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>