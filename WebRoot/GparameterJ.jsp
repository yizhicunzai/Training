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
			<td><img src="S320L.jpg" style="height: 98px; width: 220px; "></td>
			<td><img src="S350L.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="S450L.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="S500L.jpg" style="height: 98px; width: 220px;"></td>
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">汽车型号</td>
			<td width="25%"><font color="#FFFFFF">S320 L</td>
			<td width="25%"><font color="#FFFFFF">S350 L</td>
			<td width="25%"><font color="#FFFFFF">S450 L</td>
			<td width="16.66%"><font color="#FFFFFF">S500 L </td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商指导价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF"> 86.38 万起</td>
			<td width="25%"><font color="#FFFFFF" aling="center">102.54万元</td>
			<td width="25%"><font color="#FFFFFF">122.55万元</td>
			<td width="25%"><font color="#FFFFFF">173.28万元</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">4S店最低报价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">80.38 万起</td>
			<td width="25%"><font color="#FFFFFF">94.88万起</td>
			<td width="25%"><font color="#FFFFFF">113.68万元</td>
			<td width="25%"><font color="#FFFFFF">173.28万元</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">奔驰(进口)</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">级别</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">大型车</td>
			<td width="25%"><font color="#FFFFFF">大型车</td>
			<td width="25%"><font color="#FFFFFF">大型车</td>
			<td><font color="#FFFFFF">大型车</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">车体结构
					<td width="25%"><font color="#FFFFFF">4门5座3厢车</td>
				<td width="25%"><font color="#FFFFFF">4门5座3厢车</td>
				<td width="25%"><font color="#FFFFFF">4门5座3厢车</td>
				<td width="25%"><font color="#FFFFFF">4门5座3厢车</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">长x宽x高(mm)</td>
			<td width="25%"><font color="#FFFFFF">5259x1899x1494</td>
			<td width="25%"><font color="#FFFFFF">5259x1899x1494</td>
			<td width="25%"><font color="#FFFFFF">5259x1899x1497</td>
			<td><font color="#FFFFFF">5283x1905x1500</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">发动机</td>
			<td width="25%"><font color="#FFFFFF">2.0T 313马力L4</td>
			<td width="25%"><font color="#FFFFFF">3.0T 367马力V6</td>
			<td width="25%"><font color="#FFFFFF">3.0L 224马力V6</td>
			<td><font color="#FFFFFF">3.0T 435马力L6</td>
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
	</span><div align="center"><input type="button" style="background:yellow"value="增加"/>
</body>
<html>
