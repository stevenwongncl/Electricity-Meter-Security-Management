<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">  
    var start = 300;  
    var step = -1;  
    function count() {  
        document.getElementById("div1").innerHTML = "注册考试 时间：" + Math.floor(start/60)+"分"+start%60+ "秒";  
        start += step;  
        if (start <= 0) {  
            start = 300;  
            //alert(start);  
            window.location = "overAnsw";//重定位  
        }  
        setTimeout("count()", 1000);  
    }  
    window.onload = count;  
</script>  
<style>  
    .myDiv{    
        color: red;  
    }  
</style> 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>答题升级</title> 
  <meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文,后台管理系统模版,后台模版下载,后台管理系统,后台管理模版" />
  <meta name="description" content="JS代码网提供Bootstrap模版,后台管理系统模版,后台管理界面,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta name="author" content="">
  <% String name=request.getParameter("name"); %>
  <!-- Stylesheets -->
  <link href="style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="style/jquery.cleditor.css"> 
  <!-- Uniform -->
  <link rel="stylesheet" href="style/uniform.default.css"> 
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="style/style.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="style/widgets.css" rel="stylesheet">   
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon/favicon.png">
</head>

<body>
<div class="mainbar">
<div class="page-head">
<span style="color:red"><%=name %>，请在规定时间完成以下题目</span>
<div class="myDiv">  
        <div id="div1"></div>  
    </div>  
</div>
<div>
<form action="upgdAnsw" method="POST">
<div class="bread-crumb">
<h3>1、使网络服务器中充斥着大量要求回复的信息，消耗带宽，导致网络或系统停止正常服务，这属于什么攻击类型（）</h3>
<input type="radio" name="num1" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. 文件共享</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num1" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. 拒绝服务</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num1" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. BIND漏洞</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num1" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. 远程过程调用</h4>
</div>

 <div class="clearfix"></div>
 
 <div class="bread-crumb">
<h3>2、关于低交互蜜罐的特点，以下说法正确的是（）</h3>
<input type="radio" name="num2" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. 只模拟攻击者经常请求的服务</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num2" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. 拥有完整的生产系统</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num2" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. 是多锚点威胁感知系统</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num2" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. 过于昂贵</h4>
</div>

<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>3、蜜罐技术在计算机科学领域是在上世纪什么年代（）</h3>
<input type="radio" name="num3" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. 60年代</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num3" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. 70年代</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num3" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. 80年代</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num3" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. 90年代</h4>
</div>

<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>4、关于sebek,下列说法正确的是（）</h3>
<input type="radio" name="num4" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. Sebek是一个数据分析工具</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num4" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. Sebek是一个数据捕获工具</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num4" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. sebek只能在linux系统中运行</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num4" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. sebek相对与蜜网网关具有独立性</h4>
</div>
<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>5、Kali Linux 是基于____的Linux发行版</h3>
<input type="radio" name="num5" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. Red Hat</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num5" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. Ubantu</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num5" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. Debian</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num5" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. Mint</h4>
</div>
<div class="clearfix"></div>

<div class="bread-crumb">
<h3>6、nmap扫描常用的扫描类型不包括（）</h3>
<input type="radio" name="num6" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. TCP connect()</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num6" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. TCP同步</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num6" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. UDP端口扫描</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num6" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. UDP窃听</h4>
</div>

 <div class="clearfix"></div>
 
 <div class="bread-crumb">
<h3>7、zlan是上海（）公司的协议转换产品</h3>
<input type="radio" name="num7" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. 卓岚</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num7" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. 光明</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num7" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. 携程</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num7" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. 大众点评</h4>
</div>

<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>8、上海电力大学的计算机学院未开设以下哪个专业（）</h3>
<input type="radio" name="num8" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. 数据科学</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num8" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. 计算机科学技术</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num8" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. 软件工程</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num8" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. 信息安全</h4>
</div>

<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>9、以下哪个不属于Java Web开发中常用的SSM框架中的一部分（）</h3>
<input type="radio" name="num9" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. Spring</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num9" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. Flask</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num9" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. SpringMVC</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num9" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. Mybatis</h4>
</div>
<div class="clearfix"></div>

 <div class="bread-crumb">
<h3>10、在微信小程序开发中，发起网络请求的方法为</h3>
<input type="radio" name="num10" value="A" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;A. wx.showtoast()</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num10" value="B" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;B. wx.navigateto()</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num10" value="C" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;C. wx.request()</h4> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="num10" value="D" style="height: 20px; float: left"> <h4>&nbsp;&nbsp;&nbsp;&nbsp;D. wx.pagescrollto()</h4>
</div>
<div class="clearfix"></div>
<input type="hidden" name="name" value=<%=name %>>
<input type="submit" value="提交">
</form>
</div>

</div>

<!-- Footer </div> -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <!-- Copyright info -->
            <p>版权所有 &copy; 汪锦量&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;    
            |  <a href="#">蜜网官网| &nbsp;&nbsp;&nbsp;&nbsp;</a> 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  
            <a href="#">智能电表</a> </p>
      </div>
    </div>
  </div>
</footer> 	

<!-- Footer ends -->

<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 

<!-- JS -->
<script src="js/jquery.js"></script> <!-- jQuery -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

<!-- jQuery Flot -->
<script src="js/excanvas.min.js"></script>
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.resize.js"></script>
<script src="js/jquery.flot.pie.js"></script>
<script src="js/jquery.flot.stack.js"></script>

<!-- jQuery Notification - Noty -->
<script src="js/jquery.noty.js"></script> <!-- jQuery Notify -->
<script src="js/themes/default.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/bottom.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/topRight.js"></script> <!-- jQuery Notify -->
<script src="js/layouts/top.js"></script> <!-- jQuery Notify -->
<!-- jQuery Notification ends -->

<script src="js/sparklines.js"></script> <!-- Sparklines -->
<script src="js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
<script src="js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
<script src="js/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
<script src="js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
<script src="js/filter.js"></script> <!-- Filter for support page -->
<script src="js/custom.js"></script> <!-- Custom codes -->
<script src="js/charts.js"></script> <!-- Charts & Graphs -->

</body>
</html>