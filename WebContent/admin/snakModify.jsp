<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import="net.snak.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String isLogin="";

	if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
		System.out.print("값 없는데");
		%><jsp:forward page="loginView.jsp"/><%
	}
	
	String screen="../main.jsp";
	screen=request.getParameter("screen");
	pageContext.setAttribute("screen", screen);
%>
<%
	snakVO vo = (snakVO)session.getAttribute("vo");
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Snack Modify</title>
</head>
<body>
<form method="post" action="../adminSnakModify.snak" enctype="multipart/form-data">
	<div align="left">
		category<br>
			<input type="radio" name="category" value="1"/>파이<br>
			<input type="radio" name="category" value="2"/>스낵<br>
			<input type="radio" name="category" value="3"/>비스킷<br>
			<input type="radio" name="category" value="4"/>껌<br>
			<input type="radio" name="category" value="5"/>캔디<br>
			<input type="radio" name="category" value="6"/>초콜릿<br><br>
		name<br>	<input type="text" name="name" value="<%=vo.getName()%>"><br><br>
		image<br>	<input type="file" name="image" value="<%=vo.getImage()%>"><br><br>
		title<br>	<input type="text" name="title" value="<%=vo.getTitle()%>"><br><br>
		context1<br>	<input type="text" name="context1" value="<%=vo.getContext1()%>"><br><br>
		context2<br>	<input type="text" name="context2" value="<%=vo.getContext2()%>"><br><br>
		isNew?<br> <input type="checkbox" name="isNew" checked="checked" value="yes"><br><br>
		<input type="hidden" name="num" value="<%=vo.getNum()%>">
		<input type="submit" value="add">
	</div>
</form>
</body>
</html>