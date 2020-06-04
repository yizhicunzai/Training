<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>我的预约</title>
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

	<div id="particles-js">
		<div class="login">
			<div class="login-top"><div style="color:#B22222">我的预约</div></div>
			
   &emsp;&emsp;<table width="300" border="2" style="border-collapse:collapse">
   <tr>
    <td width="140"><div align="center"><font color="#3074A2" style="font-size:9pt;color:#000000">预约车名</font> </div></td>
    <td width="140"><div align="center"><font color="#3074A2" style="font-size:9pt;color:#000000">  预约时间 </font></div></td>
  <td></td>
  </tr>
   <c:forEach var="item" items="${subscribeList}" varStatus="vs">
  
  <tr>
    <td width="20"><div align="center"><font color="#3074A2" style="font-size:9pt;color:#000000"> ${item.car_model }</font> </div></td>
    <td width="20" ><div align="center"><font color="#3074A2" style="font-size:9pt;color:#000000"> ${item.subscribe_tame }  </font></div></td>
   <td><a href="deleteSubscribeUser?subscribe_no=${item.subscribe_no }"><input type=button
									style="background:yellow" value="取消预约" /></a></td>
  </tr>  </c:forEach>  </table>

		</div>
		<div class="sk-rotating-plane"></div>
	</div>

	<!-- scripts -->
	<script src="js/particles.min.js"></script>
	<script src="js/app.js"></script>

	<div style="text-align:center;"></div>
</body>
<html>