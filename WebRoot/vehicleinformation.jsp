<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<body bgcolor="#121c27" align="center">
	<c:forEach var="item" items="${CarDetailsList}" varStatus="vs">

	<table height="100%" width="100%" border="1" cellpadding="2"
		cellspacing="2">
	
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">图片</td>
			<td><img src="${item.picture }" style="height: 98px; width: 220px; "></td>
			
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">汽车型号</td>
			<td width="25%"><font color="#FFFFFF">${item.car_model }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商指导价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF"> ${item.car_millprice }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">4S店最低报价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">${item.car_shopprice }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">${item.car_manufacturer }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">级别</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">${item.car_rank }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">车体结构</font>td>
					<td width="25%"><font color="#FFFFFF">${item.car_bodystructure }</td>
	
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">长x宽x高(mm)</td>
			<td width="25%"><font color="#FFFFFF">${item.car_lwh }</td>
			
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">发动机</td>
			<td width="25%"><font color="#FFFFFF">${item.car_engin }</td>
			
		</tr>


	</table>
		</c:forEach>
	</div>
	</span><div align="center"><input type="button" style="background:yellow"value="返回"/>
</body>
<html>
