<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("값 없는데");
	%><jsp:forward page="../loginView.jsp"/><%
}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>의견접수 관리자모드</title>
</head>
<body>
	<center>
		<a href="./list.ad">의견접수 현황</a>
	</center>
</body>
</html>