<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
<%@ page import="net.snak.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%

if(request.getParameter("isLogin")==null||request.getParameter("isLogin").equals("")){
	System.out.print("값 없는데"+request.getParameter("isLogin"));
	%><jsp:forward page="loginView.jsp"/><%
}else{
	System.out.print("값 있네!"+request.getParameter("isLogin"));
	session.setAttribute("isLogin", "true");
}
	String screen="../main.jsp";
	screen=request.getParameter("screen");
	pageContext.setAttribute("screen", screen);
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Admin menu</title>
</head>
<body>
<div align="center">
<table align="center" border="2" >
<tr >
		<td>
			(궁서체)관리자 메뉴!
		</td>
	</tr>
	<tr>
		<td>
			<a href="adminSnakView.snak">snack 통합 관리</a>
		</td>
	</tr>
	<tr>
		<td>
			<a href="admin/epress/index.jsp">epress 게시판 관리</a>
		</td>
	</tr>
	<tr>
		<td>
			<a href="admin/board2/index.jsp">투자의견 게시판 관리</a>
		</td>
	</tr>
	<tr>
		<td>
			<a href="admin/idea/main.jsp">의견 게시판 관리</a>
		</td>
	</tr>
</table>




</div>
	
</body>
</html>