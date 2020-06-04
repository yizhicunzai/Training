
<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>个人资料</title>
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

alert("用户名不能为空！！");return false;}
else if(!/^[\u4e00-\u9fa5]+$/.test(yhm)){   

alert("用户名格式不正确!!");return false;} 
//密码
else if(mm==""){

alert("密码不能为空！！");return false;}
else if(!/^\d{9}$/.test(mm)){

alert("请输入9位数字密码!!");return false;}
//确认密码
else if(qrmm==""){

alert("确认密码不能为空！！");return false;}
else if(qrmm!=mm){

alert("密码不相同!!");return false;}
//电话
else if(dh==""){

alert("电话不能为空！！");return false;}
//性别
if(!nan.checked&&!nv.checked)
{alert("请选择性别！！");return false;}}
</script>
<body>
  <%
      //从session中读取List,并将List的数据以表格的形式显示
         if(session.getAttribute("user")!=null){
            List<User> list=(List<User>)session.getAttribute("user");
            //遍历List
            for(int i=0;i<list.size();i++){
            %>



<div id="particles-js">
		<div class="login">
			<div class="login-top">
				个人资料 <img src=<%=list.get(i).getPhoto() %> style="height: 50px; width: 110px; ">
			</div>
			
			<div class="login-center clearfix">
				<div class="login-center-img"><font color="gray" size="4">id</font></div>
				<div class="login-center-input">
					<input type="text" id="yhm"  placeholder="<%=list.get(i).getUser_id() %>" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
					<div class="login-center-input-text">用户id</div>
				
				
			</div>
			<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="password" id="mm"  placeholder="<%=list.get(i).getUser_name() %>" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">用户名</div>
				
				</div><div class="login-left clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="password" id="mm"  placeholder="<%=list.get(i).getUser_password() %>" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
					<div class="login-center-input-text">密码</div>
				
				</div>
<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/phone.jpg"/></div>
				<div class="login-center-input">
					<input type="password" id="dh"  placeholder="<%=list.get(i).getTelephone() %>" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的电话'"/>
					<div class="login-center-input-text">电话</div>
				</div><br/>
                               <div class="login-left clearfix">
				<div class="login-center-img"><img src="img/sex.jpg"/></div>
				<div class="login-center-input">
					<input type="text" id="dh"  placeholder="<%=list.get(i).getUser_gender() %>" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的性别'"/>
					<div class="login-center-input-text">性别</div>
				</div><br/>

			</div>
	
			<a href="personalupdat.jsp"><input type="submit" style="background:#00FFFF;width:250px;height:50px;" value="修改">
				</a>
				
			</div>		<%}}
			
			 %>
		</div>
		<div class="sk-rotating-plane"></div>
</div>

         
<!-- scripts -->
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>

<div style="text-align:center;">
</div>
</body>
</html>