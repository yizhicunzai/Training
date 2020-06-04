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
			<td><img src="GLC260L.jpg" style="height: 98px; width: 220px; "></td>
			<td><img src="GLE320.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="G500.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="AMG GLS 63.jpg" style="height: 98px; width: 220px;"></td>
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">汽车型号</td>
			<td width="25%"><font color="#FFFFFF">GLC 260 L</td>
			<td width="25%"><font color="#FFFFFF">GLE 320 </td>
			<td width="25%"><font color="#FFFFFF">G500</td>
			<td width="16.66%"><font color="#FFFFFF">AMG GLS 63</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商指导价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF"> 44.50 万起</td>
			<td width="25%"><font color="#FFFFFF" aling="center">86.08万元</td>
			<td width="25%"><font color="#FFFFFF">156.88万元</td>
			<td width="25%"><font color="#FFFFFF">198.18万元</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">4S店最低报价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">42万起</td>
			<td width="25%"><font color="#FFFFFF">82.84万起</td>
			<td width="25%"><font color="#FFFFFF">156.88万元</td>
			<td width="25%"><font color="#FFFFFF">198.18万起</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">北京奔驰</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">梅赛德斯-AMG</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">级别</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">中型SUV</td>
			<td width="25%"><font color="#FFFFFF">中大型SUV</td>
			<td width="25%"><font color="#FFFFFF"> 中大型SUV</td>
			<td><font color="#FFFFFF">大型SUV</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">车体结构
					<td width="25%"><font color="#FFFFFF">5门5座SUV</td>
				<td width="25%"><font color="#FFFFFF">5门5座SUV</td>
				<td width="25%"><font color="#FFFFFF">5门5座SUV</td>
				<td width="25%"><font color="#FFFFFF">5门7座SUV</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">长x宽x高(mm)</td>
			<td width="25%"><font color="#FFFFFF">4765*1890*1648</td>
			<td width="25%"><font color="#FFFFFF">4891*2003*1731</td>
			<td width="25%"><font color="#FFFFFF">4764*1867*1960</td>
			<td><font color="#FFFFFF">5162*1982*1851</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">发动机</td>
			<td width="25%"><font color="#FFFFFF">2.0T 211马力 L4</td>
			<td width="25%"><font color="#FFFFFF">3.0T 272马力 V6</td>
			<td width="25%"><font color="#FFFFFF">4.0T 421马力 V8</td>
			<td><font color="#FFFFFF">5.5T 585马力 V8</td>
		</tr>


	</table>
	</div>
	</span><div align="center"><input type="button" style="background:yellow"value="返回"/>


</body>
</html>