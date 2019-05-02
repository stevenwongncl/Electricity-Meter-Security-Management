<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>  
<base href="<%=basePath%>">  
  
<title>My JSP 'dongtaigetdatediff.jsp' starting page</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  
<!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->  
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>  
<script type="text/javascript">  
    var start = 30;  
    var step = -1;  
    function count() {  
        document.getElementById("div1").innerHTML = "页面将在" + Math.floor(start/60)+"分"+start%60+ "秒后返回登录页面...";  
        start += step;  
        if (start <= 0) {  
            start = 5;  
            //alert(start);  
            window.location = "index.jsp";//重定位  
        }  
        setTimeout("count()", 1000);  
    }  
    window.onload = count;  
</script>  
<!-- <style>  
    .myDiv,p{  
        margin:0 auto;  
        margin-top:80px;  
        width:300px;  
        color: red;  
    }  
</style>   -->
</head>  
  
<body>  
    <div class="myDiv">  
        <p>登录失败。。。</p>  
        <div id="div1"></div>  
    </div>  
</body>  
</html>  