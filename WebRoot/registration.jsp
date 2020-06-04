
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>注册</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
</head><script src="jquery-1.12.3.js"></script>
<script>
function testB(){
var yhm=document.getElementById("yhm").value;
var mm=document.getElementById("mm").value;
var qrmm=document.getElementById("qrmm").value;
var dh=document.getElementById("dh").value;

//用户名
if(yhm==""){

alert("用户名不能为空！！");return false;}

//密码
else if(mm==""){

alert("密码不能为空！！");return false;}
else if(!/^\d{6}$/.test(mm)){

alert("请输入6位数字密码!!");return false;}
//确认密码
else if(qrmm==""){

alert("确认密码不能为空！！");return false;}
else if(qrmm!=mm){

alert("密码不相同!!");return false;}
//电话
else if(dh==""){

alert("电话不能为空！！");return false;}
//性别
else if(!nan.checked&&!nv.checked)
{alert("请选择性别！！");return false;}

//成功注册
else alert("恭喜"+yhm+"注册成功！！");}
</script>
<body>

<div id="particles-js"><tr style="display:none">
	
					
		<div class="login">
			<div class="login-top"><form action="addRegAction" method="post" onClick="return testB()">
				<div style="color:#B22222">注册账号 &emsp;&emsp;<label for="xFile"><img  class="himg" src="u=1909953893,2290349127&fm=27&gp=0.jpg" style="height: 60px; width:90px"/></label></div></div>
			
			
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="yhm" name="user_name"  placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text">用户名</div>
				
				
			</div>
			<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="mm" name="user_password" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">密码</div>
				
				</div>
<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="qrmm"  placeholder="请重新输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请重新输入您的密码'"/>
					<div class="login-center-input-text">重新输入密码</div>
				</div><div class="login-left clearfix">
				<div class="login-center-img"><img src="img/phone.jpg"/></div>
				<div class="login-center-input">
					<input type="text" id="dh" name="telephone" placeholder="请输入您的电话" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的电话'"/>
					<div class="login-center-input-text">电话</div>
				</div><br/>
                                <div class="login-left-input">
                                <div class="login-center-img" style="word-spacing:5px"><img src="img/sex.jpg"/></div>
					<div style="word-spacing:5px">&emsp;	<input type="radio"name="user_gender" value="男"/>男
                                            <input type="radio"name="user_gender" value="女"/>女</div>
				</div>
<tr style="display:none">
	
					<input
						type="file" id="xFile" name="photo"
						onchange="if(this.value!=''){document.getElementById('hfile').style.display='block';}"
						style="display:none"> <script>
							var fileInput = document
									.querySelector('input[type=file]'), previewImg = document
									.querySelector('.himg');
							fileInput.addEventListener('change', function() {
								var file = this.files[0];
								var reader = new FileReader();
								// 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
								reader.addEventListener("load", function() {
									previewImg.src= reader.result;
								}, false);
								// 调用reader.readAsDataURL()方法，把图片转成base64
								reader.readAsDataURL(file);
							}, false);
						</script>
				</tr>
			
			</div><div class="login-button"><input type="submit"style="background:#00FFFF;width:250px;height:50px;"  value="注册" /></div>
			
		</div></form>
		<div class="sk-rotating-plane"></div>
</div>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="file" id="xFile" name="photo"
						onchange="if(this.value!=''){document.getElementById('hfile').style.display='block';}"
						style="display:none"> <script>
							var fileInput = document
									.querySelector('input[type=file]'), previewImg = document
									.querySelector('.himg');
							fileInput.addEventListener('change', function() {
								var file = this.files[0];
								var reader = new FileReader();
								// 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
								reader.addEventListener("load", function() {
									previewImg.background= reader.result;
								}, false);
								// 调用reader.readAsDataURL()方法，把图片转成base64
								reader.readAsDataURL(file);
							}, false);
						</script></td>
				</tr>

<!-- scripts -->
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>
<div id="particles-js">
<div style="text-align:center;">
</div>
</body>
</html>