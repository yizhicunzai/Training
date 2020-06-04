<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>预约</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
</head><script src="jquery-1.12.3.js"></script>
<script>
function test(){
var yhm=document.getElementById("yhm").value;
var mm=document.getElementById("mm").value;
var qrmm=document.getElementById("qrmm").value;
var dh=document.getElementById("dh").value;

//用户名
if(yhm==""){
document.myForm.yhm.focus();
alert("用户名不能为空！！");return false;}
else if(!/^[\u4e00-\u9fa5]+$/.test(yhm)){   
document.myForm.yhm.focus();
alert("用户名格式不正确!!");return false;} 
//密码
else if(mm==""){
document.myForm.mm.focus();
alert("密码不能为空！！");return false;}
else if(!/^\d{9}$/.test(mm)){
document.myForm.mm.focus();
alert("请输入9位数字密码!!");return false;}
//确认密码
else if(qrmm==""){
document.myForm.qrmm.focus();
alert("确认密码不能为空！！");return false;}
else if(qrmm!=mm){
document.myForm.qrmm.focus();
alert("密码不相同!!");return false;}
//电话
else if(dh==""){
document.myForm.qrmm.focus();
alert("电话不能为空！！");return false;}
//性别
if(!nan.checked&&!nv.checked)
{alert("请选择性别！！");return false;}

//成功注册
else alert("恭喜"+yhm+"注册成功！！");window.close()}
</script>
<body>
<form action="addSubscribeAction" method="post" onClick="return test()">
	<c:forEach var="item" items="${CarList}" varStatus="vs">

<%
      //从session中读取List,并将List的数据以表格的形式显示
         if(session.getAttribute("user")!=null){
            List<User> list=(List<User>)session.getAttribute("user");
            %>
<div id="particles-js">
		<div class="login">
			<div class="login-top">
				预约
			</div>
			<input type="hidden" name="user_id" value="<%=list.get(0).getUser_id() %>"/>
			<input type="hidden" name="car_no" value="${item.car_no }"/>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="yhm"name="user_name" value="<%=list.get(0).getUser_name() %>"/>
					<div class="login-center-input-text">用户名</div>
				
				
			</div>
			<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/car.jpg"/></div>
				<div class="login-center-input">
					<input type="text" name="car_model" value=${item.car_model }  />
					<div class="login-center-input-text">车名</div>
				
				</div>
<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/phone.jpg"/></div>
				<div class="login-center-input">
					<input type="text" name="telephone" value="<%=list.get(0).getTelephone() %>"/>
					<div class="login-center-input-text">电话</div>
				</div><br/>
                         <div class="login-left clearfix">
				<div class="login-center-img"><img src="img/shijian.jpg"/></div>
				<div class="login-center-input">
					<input type="text" name="subscribe_tame"  placeholder="请输入您想看车试车的时间" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您想看车试车的时间'"/>
					<div class="login-center-input-text">时间</div>
				</div>  
<%
} 
%>
</c:forEach>
			</div>
			<div class="login-button">
				<input type="submit"style="background:#00FFFF;width:250px;height:50px;"  value="预约" />
			</div></a>
		</div></form>
		<div class="sk-rotating-plane"></div>
</div>

<!-- scripts -->
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>

<div style="text-align:center;">
</div>
</div>

</body>
</html>