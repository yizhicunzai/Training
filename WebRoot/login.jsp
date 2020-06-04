<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>登录</title>
<meta name="description"
	content="particles.js is a lightweight JavaScript library for creating particles.">
<meta name="author" content="Vincent Garreau" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/reset.css" />
</head>
<script type="text/javascript">
	function test() {
		var zh = document.getElementById("zh").value;
		var pwd = document.getElementById("pwd").value;
		if (zh == "") {
			alert("帐号不能为空！！");
			return false
		} else if (pwd == "") {
			alert("密码不能为空！！");
			return false
		} else if (pwd.length < 6) {
			alert("密码长度小于6");
			return false
		}else if((zh=="cunzai")||(pwd=="123456")){
		location.href("home3.html");
		}  
		else
			return true;
	}
</script>
<body>
<form name="login" action="queryloginAction" method="post">
	<div id="particles-js">
		<div class="login">
			<div class="login-top"><div style="color:#B22222">登录</div></div>
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="img/name.png" />
				</div>
				${param.msg} 
				<div class="login-center-input">
					<input type="text" id="zh" name="user_name" placeholder="请输入您的用户名"
						onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'" />
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img">
					<img src="img/password.png" />
				</div>
				<div class="login-center-input">
					<input type="password" id="pwd" name="user_password" placeholder="请输入您的密码"
						onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'" />
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<a href="" onClick="return test()">
				<div class="login-button"><input type="submit"style="background:#00FFFF;width:250px;height:50px;"  value="登陆" /></a></div>
			</form>
			<br>
			
		
				<div align="center"><a href="registration.jsp"><font color="red">未注册！点击跳转注册页面</font></a></div>
				<div class="sk-rotating-plane"></div>
		</div>
		<div class="sk-rotating-plane"></div>
	</div>

	<!-- scripts -->
	<script src="js/particles.min.js"></script>
	<script src="js/app.js"></script>

	<div style="text-align:center;"></div>
</body>
<html>