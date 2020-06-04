<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

</head>
<style type="text/css" media="all">
.loading{text-align:center;background-size:10px;color:#3F6;font-size:36px;background-color:#30C;}
</style>
<c:forEach var="item" items="${CarDetailsList}" varStatus="vs">
<body background="${item.picture}" class="himg"
style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;"
>
	

<div class="loading"><font size="+3" ><a><font color="#FFFFFF" >汽车上架</a></div></font></td>
<table width="340" border="1"align="center">

<tr><td width="553"><form action=addCarAction method="post" name="form1" onSubmit="return check()">
  <table width="290" height="70" border="1" align="center" style="border-collapse:collapse" >
  
    
    <tr>
      <td width="131" height="29"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">汽车型号</font ></div></td>
      <input name="car_no" type="hidden" id="title" size="20"value="${item.car_no }">
      <td><input name="car_model" type="text" id="title" size="20"value="${item.car_model }"></td>
    </tr>
	
	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">厂商指导价 </font></div></td>
	   
	   <td><input name="car_millprice" type="text" id="title" size="20"value="${item.car_millprice }"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">4S店最低报价 </font></div></td>
	   
	   <td><input name="car_shopprice" type="text" id="title" size="20"value="${item.car_shopprice}"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">厂商 </font></div></td>
	   
	   <td><input name="car_manufacturer" type="text" id="title" size="20"value="${item.car_manufacturer }"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">级别 </font></div></td>
	   
	   <td><input name="car_rank" type="text" id="title" size="20"value="${item.car_rank }"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">车体结构 </font></div></td>
	   
	   <td><input name="car_bodystructure" type="text" id="title" size="20"value="${item.car_bodystructure }"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">长x宽x高(mm) </font></div></td>
	   
	   <td><input name="car_lwh" type="text" id="title" size="20"value="${item.car_lwh }"></td>
	   </tr>
	   	 <tr>
	   <td height="4"><div align="right"><font color="#3074A2" style="font-size:9pt;color:#FFFFFF">发动机 </font></div></td>
	   
	   <td><input name="car_engin" type="text" id="title" size="20"value="${item.car_engin }"></td>
	   </tr>
	 <tr>
  
  </table><label for="xFile"><img src="---.jpg" style="height: 40px; width:70px"/></label><div align="center"><input type="submit" name="bt1" value="确定"/></div><input
						type="file" id="xFile" name="picture"
						style="display:none"> <script>
							var fileInput = document
									.querySelector('input[type=file]'), previewImg = document
									.querySelector('.himg');
							fileInput.addEventListener('change', function() {
								var file = this.files[0];
								var reader = new FileReader();
								// 监听reader对象的的onload事件，当图片加载完成时，把base64编码賦值给预览图片
								reader.addEventListener("load", function() {
									previewImg.background= reader.result;
								}, false);
								// 调用reader.readAsDataURL()方法，把图片转成base64
								reader.readAsDataURL(file);
							}, false);
						</script>
</form>
</tr>
</table>

</body>
</c:forEach>
</html>

