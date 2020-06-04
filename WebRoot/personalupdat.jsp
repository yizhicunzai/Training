<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>修改个人资料</title>
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
if(!nan.checked&&!nv.checked)
{alert("请选择性别！！");return false;}
}
</script>
<body> <form action="qureyupadateAction" method="post">
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
				修改个人资料 <label for="xFile"><img class="himg" src="<%=list.get(i).getPhoto() %>" style="height: 60px; width:90px"/></label>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><font color="gray" size="4">id</font></div>
				<div class="login-center-input">
					<input type="text" id="yhm" name="user_id" value="<%=list.get(i).getUser_id() %>" />
					<div class="login-center-input-text">用户id</div>
				
				
			</div>
			<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/name.png"/></div>
				<div class="login-center-input">
					<input type="text" id="mm"name="user_name"  value="<%=list.get(i).getUser_name() %>" />
					<div class="login-center-input-text">用户名</div>
				
				</div><div class="login-left clearfix">
				<div class="login-center-img"><img src="img/password.png"/></div>
				<div class="login-center-input">
					<input type="text" id="mm"name="user_password"  value="<%=list.get(i).getUser_password() %>" />
					<div class="login-center-input-text">密码</div>
				
				</div>
<div class="login-left clearfix">
				<div class="login-center-img"><img src="img/phone.jpg"/></div>
				<div class="login-center-input">
					<input type="text" id="dh" name="telephone" value="<%=list.get(i).getTelephone() %>"  />
					<div class="login-center-input-text">电话</div>
				</div><br/>
                              <div class="login-left-input">
                                <div class="login-center-img" style="word-spacing:5px"><img src="img/sex.jpg"/></div>
					<div style="word-spacing:5px">&emsp;	<input type="radio"name="user_gender" value="男"/>男
                                            <input type="radio"name="user_gender" value="女"/>女</div>
				</div>
				<br/>
<input type="file" id="xFile" name="photo"
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
			</div>
			<input type="submit" style="background:#00FFFF;width:250px;height:50px;" value="修改">
			<a href="DeleteUser?user_id=<%=list.get(i).getUser_id() %>" onClick="return confirm('永久注销后用户将无法重新登陆,确定要永久注销?')" ><input type="submit"style="color:red;"  value="永久注销" /></a>
				</div></form>			</div><%}}
			
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