<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Home</title>
<link href="/resources/css/Login/LoginStyle.css" rel="stylesheet" type="text/css" media="all"/>
	<script type="text/javascript" src="resources/jquery/jquery-3.1.1.js"></script>
	<script>
		$(function () {
		    $(".remember").click(function () {
		        if ($(":checkbox").prop("checked")){
		            $(":checkbox").prop("checked",false);
				}else {
		            $(":checkbox").prop("checked",true);
				}
            });
        });
	</script>
</head>
<body>
<div class="login">
	<h2>登陆账户享受更多服务..</h2>
	<div class="login-top">
		<h1>登陆</h1>
		<form action="/User/Login" method="post">
			<input type="text" name="uName" value="请输入用户名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入用户名';}">
			<input type="password" name="uPassword" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
	    <div class="forgot">
	    	<input type="checkbox" checked name="checked"><a class="remember">记住密码</a>
	    	<input type="submit" value="登陆" >
	    </div>
		</form>
	</div>
	<div class="login-bottom">
		<h3>点击这 &nbsp;<a href="#">注册</a>&nbsp 新账户</h3>
	</div>
</div>	
<div class="copyright">
	<p>Copyright &copy; 2015.Company name All rights reserved.- <a onclick="alert('别再点了！')">别点这里</a> - More Templates <a href="index.jsp" target="_blank" title="返回首页">返回首页</a></p>
</div>
</body>
</html>