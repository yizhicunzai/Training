<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'parameter.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<body bgcolor="#121c27">
	<table height="100%" width="100%" border="1" cellpadding="2"
		cellspacing="2">
		<tr>
			<td colspan="6" class="Argtitle"><font color="#FFFFFF">车辆基本信息</font>
			</td>
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">图片</td>
			<td><img src="AMG GTR.jpg" style="height: 98px; width: 220px; "></td>
			<td><img src="SLC 260.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="SL 400.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="SLS ANG.jpg" style="height: 98px; width: 220px;"></td>
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">汽车型号</td>
			<td width="25%"><font color="#FFFFFF">AMG GTR</td>
			<td width="25%"><font color="#FFFFFF">SLC 260 </td>
			<td width="25%"><font color="#FFFFFF">SL 400</td>
			<td width="16.66%"><font color="#FFFFFF">SLS ANG</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商指导价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF"> 215.58万起</td>
			<td width="25%"><font color="#FFFFFF" aling="center">58.30万元</td>
			<td width="25%"><font color="#FFFFFF">101.68万元</td>
			<td width="25%"><font color="#FFFFFF">380万元</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">4S店最低报价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">215.58万起</td>
			<td width="25%"><font color="#FFFFFF">58.30万起</td>
			<td width="25%"><font color="#FFFFFF">101.68万元</td>
			<td width="25%"><font color="#FFFFFF">380万起</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">梅赛德斯-AMG</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">梅赛德斯-AMG</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">级别</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">跑车</td>
			<td width="25%"><font color="#FFFFFF">跑车</td>
			<td width="25%"><font color="#FFFFFF"> 跑车</td>
			<td><font color="#FFFFFF">跑车</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">车体结构
					<td width="25%"><font color="#FFFFFF">2门2座硬顶跑车</td>
				<td width="25%"><font color="#FFFFFF">2门2座硬顶敞篷车</td>
				<td width="25%"><font color="#FFFFFF">2门2座硬顶敞篷车</td>
				<td width="25%"><font color="#FFFFFF">2门2座硬顶跑车</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">长x宽x高(mm)</td>
			<td width="25%"><font color="#FFFFFF">4546*1939*1288</td>
			<td width="25%"><font color="#FFFFFF">4138*1817*1300</td>
			<td width="25%"><font color="#FFFFFF">4646*1877*1304</td>
			<td><font color="#FFFFFF">4638*1939*1262</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">发动机</td>
			<td width="25%"><font color="#FFFFFF">4.0T 585马力 V8</td>
			<td width="25%"><font color="#FFFFFF">2.0T 211马力 L4</td>
			<td width="25%"><font color="#FFFFFF">3.0T 367马力 V6</td>
			<td><font color="#FFFFFF">6.2L 631马力 V8</td>
		</tr>
<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF"></td>
			<td width="25%"><font color="#FFFFFF"><input type="button" style="background:yellow"value="修改"/><input type="button" style="background:yellow"value="删除"/></td>
			<td width="25%"><font color="#FFFFFF"><input type="button" style="background:yellow"value="修改"/><input type="button" style="background:yellow"value="删除"/></td>
			<td width="25%"><font color="#FFFFFF"><input type="button" style="background:yellow"value="修改"/><input type="button" style="background:yellow"value="删除"/></td>
			<td><font color="#FFFFFF"><input type="button" style="background:yellow"value="修改"/><input type="button" style="background:yellow"value="删除"/></td>
		</tr>


	</table>
	</div>
	</span>
<div align="center"><input type="button" style="background:yellow"value="增加"/>

</body>
</html>