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
			<td><img src="r400.jpg" style="height: 98px; width: 220px; "></td>
			<td><img src="weitin.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="weiyanuo.jpg" style="height: 98px; width: 220px;"></td>
			<td><img src="V 260.jpg" style="height: 98px; width: 220px;"></td>
		</tr>
		<tr>
			<td class="Arg" width="25%"><font color="#FFFFFF">汽车型号</td>
			<td width="25%"><font color="#FFFFFF">R400</td>
			<td width="25%"><font color="#FFFFFF">威霆</td>
			<td width="25%"><font color="#FFFFFF">唯雅诺</td>
			<td width="16.66%"><font color="#FFFFFF"> V 260</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商指导价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF"> 72.68 万起</td>
			<td width="25%"><font color="#FFFFFF" aling="center">29.60万元</td>
			<td width="25%"><font color="#FFFFFF">44.9万元</td>
			<td width="25%"><font color="#FFFFFF">59.3万元</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">4S店最低报价</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">72.68万起</td>
			<td width="25%"><font color="#FFFFFF">23.60万起</td>
			<td width="25%"><font color="#FFFFFF">43.5万元</td>
			<td width="25%"><font color="#FFFFFF">51.80万起</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">厂商</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">奔驰(进口)</td>
			<td width="25%"><font color="#FFFFFF">福建奔驰</td>
			<td width="25%"><font color="#FFFFFF">北京奔驰</td>
			<td width="25%"><font color="#FFFFFF">福建奔驰</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">级别</td>
			<td width="25%"><font color="#FFFFFF"><font
					color="#FFFFFF">MPV</td>
			<td width="25%"><font color="#FFFFFF">MPV</td>
			<td width="25%"><font color="#FFFFFF"> MPV</td>
			<td><font color="#FFFFFF">MPV</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">车体结构
					<td width="25%"><font color="#FFFFFF">5门6座MPV</td>
				<td width="25%"><font color="#FFFFFF">4门7座MPV</td>
				<td width="25%"><font color="#FFFFFF">5门7座MPV</td>
				<td width="25%"><font color="#FFFFFF">5门7座MPV</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">长x宽x高(mm)</td>
			<td width="25%"><font color="#FFFFFF">5159*1922*1663</td>
			<td width="25%"><font color="#FFFFFF">5370*1928*1880</td>
			<td width="25%"><font color="#FFFFFF">4993x1901x1875</td>
			<td><font color="#FFFFFF">5140x1928x1920</td>
		</tr>
		<tr>
			<td class="Argname" width="25%"><font color="#FFFFFF">发动机</td>
			<td width="25%"><font color="#FFFFFF">3.0T 333马力 V6</td>
			<td width="25%"><font color="#FFFFFF">2.0T 211马力 L4</td>
			<td width="25%"><font color="#FFFFFF">3.0L 224马力V6</td>
			<td><font color="#FFFFFF">2.0T 211马力L4</td>
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
<html>
