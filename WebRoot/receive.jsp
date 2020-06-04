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

<body bgcolor="#121c27">

	<table align="center" border="1" cellpadding="2"
		cellspacing="2">
		
		<tr>
			<td class="Arg" width="15%"><font color="#FFFFFF">编号</td>
			<td class="Arg" width="15%"><font color="#FFFFFF">用户名</td>
			<td class="Arg" width="15%"><font color="#FFFFFF">预约车名</td>
			<td class="Arg" width="15%"><font color="#FFFFFF">联系电话</td>
			<td class="Arg" width="15%"><font color="#FFFFFF">预约时间</td>
		</tr>
			<c:forEach var="item" items="${SubscribeList}" varStatus="vs">
		
		<tr>
			<td class="Arg" ><font color="#FFFFFF">${item.subscribe_no }</td>
			<td ><font color="#FFFFFF">${item.user_name }</font></td>
			<td ><font color="#FFFFFF">${item.car_model }</td>
			<td ><font color="#FFFFFF">${item.telephone }</td>
			<td ><font color="#FFFFFF">${item.subscribe_tame } </td>
		</tr>
			</c:forEach>
	</table>
	</div>
	</span><div align="center"><a href="home3.html"><input type="button" style="background:yellow"value="返回"/></a>
</body>
<html>
