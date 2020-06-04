<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>轿车</title>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script language="javascript">


function subscribe()
{
	window.open("queryAll?car_model=${item.car_model }","newwindow")}


</script>
</head>
<body bgcolor="#121c27">

	<c:forEach var="item" items="${CarList}" varStatus="vs">

		<div id="product_storyList_content" class="product_storyList_content">
			<div id="storyBooksssss">
				<!--使用javaScript显示图书列表-->
			</div>
			<!--列表开始-->
			<div class="product_storyList_content_left">
				<img src="${item.picture }" style="height: 50px; width: 90px;">
			</div>
			<div class="product_storyList_content_right">
				<ul>
					<li class="product_storyList_content_dash"><font
						color="#FFFFFF">${item.car_model }</li>


					<li>
						<dl class="product_content_dd">

							<dd>
								<a href="queryCarDetails?car_no=${item.car_no }"><input type=button
									style="background:yellow" value="了解详情" /></a><a href=""	
									onclick="return login()"></a><a href="" onclick="subscribe()"><input type=button
									style="background:yellow" value="预约" /></a>
							</dd>

							<dd class="footer_dull_red">
								<span><font color="#FFFFFF">￥${item.car_millprice }</span>
							</dd>


						</dl>
					</li>
				</ul>
			</div>
	</c:forEach>





	<div>
		<dl class="product_content_dd">






			<div class="product_storyList_content_bottom"></div>


			<dd>
				<img src="images/OK.gif" alt="ok" />
			</dd>
			<dd>
				<font color="#FFFFFF">页 
			</dd>
			</font>
			<dd>
				<input name="page" type="text" value="1" style="width:20px;" />
			</dd>
			<dd>
				<font color="#FFFFFF">跳转到第 
			</dd>
			</font>
			<dd>
				<img src="images/next.gif" alt="ok" />
			</dd>
			<dd>
				<ul id="product_page">
					<li><a href="#" class="product_page">1</a></li>
					<li><a href="#" class="product_page">2</a></li>
					<li><a href="#" class="product_page">3</a></li>
					<li>...</li>
					<li><a href="#" class="product_page">14</a></li>
					<li><a href="#" class="product_page">15</a></li>
					<li><a href="#" class="product_page">16</a></li>
				</ul>
			</dd>
			<dd>
				<img src="images/product_page_up.gif" alt="ok" />
			</dd>
		</dl>
	</div>
	</div>
	</div>
	<!--右侧内容结束-->
	</div>
</body>
</html>