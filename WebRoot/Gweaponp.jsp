<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>轿车</title>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>

</head>
<script type="text/javascript">
	function contact() {
		alert("电话：178156277788;QQ：1781562777;微信:178156277788")

	}
</script>

<body bgcolor="#121c27">

<a href=""><div align="right"><input type="button"style="background:yellow" value="增加" /></div></a>
	<div id="product_storyList_content" class="product_storyList_content">
		<div id="storyBooksssss">
			<!--使用javaScript显示图书列表-->
		</div>
		<!--列表开始-->
		<div class="product_storyList_content_left">
			<img src="AMG GTR.jpg" style="height: 50px; width: 90px;">
		</div>
		<div class="product_storyList_content_right">
			<ul>
				<li class="product_storyList_content_dash">
					<font color="#FFFFFF">AMG GTR </li>


				<li>
					<dl class="product_content_dd">

						<dd>
							<a href="GparameterP.jsp"><input type=button
								style="background:yellow" value="了解详情" /></a>
						<a href=""><input type="button"style="background:yellow" value="修改" /></a><a href=""><input type="button"style="background:yellow" value="删除" /></a>
						</dd>

						<dd class="footer_dull_red">
							<span><font color="#FFFFFF">￥80.00万</span>
						</dd>
						</font>
						<dd class="footer_dull_red">
							<span><font color="#FFFFFF">库存：9辆</span>
						</dd>
						</font>

					</dl>
				</li>
			</ul>
		</div>
		<div class="product_storyList_content_bottom"></div>
		<!--列表开始-->
		<div class="product_storyList_content_left">
			<img src="SLC 260.jpg" style="height: 50px; width: 90px;">
		</div>
		<div class="product_storyList_content_right">
			<ul>
				<li class="product_storyList_content_dash"><font color="#FFFFFF">SLC 260 </li>

				<dl class="product_content_dd">

					<dd>
						<a href="GparameyerP.jsp"><input type=button
							style="background:yellow" value="了解详情" /></a><font color="yellow">
					<a href=""><input type="button"style="background:yellow" value="修改" /></a><a href=""><input type="button"style="background:yellow" value="删除" /></a>
					</dd>

					<dd class="footer_dull_red">
						<span><font color="#FFFFFF">￥88.98万</span>
					</dd>
					</font>
					<dd class="footer_dull_red">
						<span><font color="#FFFFFF">库存：9辆</span>
					</dd>
					</font>

				</dl>
				</li>
			</ul>
		</div>
		<div class="product_storyList_content_bottom"></div>
		<!--列表开始-->
		<div class="product_storyList_content_left">
			<img src="SL 400.jpg" style="height: 50px; width: 90px;">
		</div>
		<div class="product_storyList_content_right">
			<ul>
				<li class="product_storyList_content_dash"><font
					color="#FFFFFF">SL 400

						<li>
							<dl class="product_content_dd">

								<dd>
									<a href="GparameyerP.jsp"><input type=button
										style="background:yellow" value="了解详情" /></a>
								<a href=""><input type="button"style="background:yellow" value="修改" /></a><a href=""><input type="button"style="background:yellow" value="删除" /></a>
								</dd>
								</dd>

								<dd class="footer_dull_red">
									<span><font color="#FFFFFF">￥76.56万</span>
								</dd>
				</font>
					<dd class="footer_dull_red">
						<span><font color="#FFFFFF">库存：8辆</span>
					</dd> </font>

					</dl></li>
			</ul>
		</div>





		<div class="product_storyList_content_bottom"></div>
		<!--列表开始-->
		<div class="product_storyList_content_left">
			<img src="SLS ANG.jpg" style="height: 50px; width: 90px;">
		</div>
		<div class="product_storyList_content_right">
			<ul>
				<li class="product_storyList_content_dash"><font
					color="#FFFFFF">SLS ANG

						<li>
							<dl class="product_content_dd">

								<dd>
									<a href="GparameyerP.jsp"><input type=button
										style="background:yellow" value="了解详情" /></a>
								<a href=""><input type="button"style="background:yellow" value="修改" /></a><a href=""><input type="button"style="background:yellow" value="删除" /></a>
								</dd>
								</dd>

								<dd class="footer_dull_red">
									<span><font color="#FFFFFF">￥76.56万</span>
								</dd>
				</font>
					<dd class="footer_dull_red">
						<span><font color="#FFFFFF">库存：8辆</span>
					</dd> </font>

					</dl></li>
			</ul>
		</div>


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