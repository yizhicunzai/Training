<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<%
      //从session中读取List,并将List的数据以表格的形式显示
         if(session.getAttribute("user")!=null){
            List<User> list=(List<User>)session.getAttribute("user");
            %>
<script language="javascript">
function personal()
{
	window.open("personal.jsp","newwindow")}
	function subscribe()
{
	window.open("querySubscribeAction?user_id=<%=list.get(0).getUser_id()%>","newwindow")}
	function zhuxiao()
{
	
	window.open("home.html","newwindow")
	 }
	
	function contact()
{
alert("电话：178156277788;QQ：1781562777;微信:178156277788；           地址：湖南长沙天心区暮云奔驰专卖店")
	}
</script>
</head>

<body bgcolor="#121c27">


<div><table><td>
<img src="mercedes-benz-logo-desktop.png" width="120"   style="width: 309px; "/></td>
<td>
<font size="+4"><a ><font color="#3f6">梅赛德斯-奔驰_心所向_驰以恒</a></font></font>
</td>
<td><font color="#FFFFFF"><img src="<%=list.get(0).getPhoto() %>" style="height: 50px; width: 60px"/>：<a href=""><font color="yellow"><%=list.get(0).getUser_name() %></font></a></font>&emsp;&emsp;
<a href="" onclick="personal()" ><font color="#FFFFFF">个人资料</font></a>&emsp;&emsp;<a href="" onclick="subscribe()" ><font color="#FFFFFF">我的预约</font></a>&emsp;&emsp;<a href=""onclick="zhuxiao()"><font color="#FFFFFF">注销</font></a><br/></td>
<td></td>

<%} %>


</div></table>

<div align="right"></font>

		
			</div>
</body>
</body>
</html>

