<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("�� ���µ�");
	%><jsp:forward page="../loginView.jsp"/><%
}
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>board2</title>
</head>
<body>
	<a href="../../admin/board2/board2Add.jsp">add</a><br>
	<a href="../../BoardList.bo2">list</a>
</body>
</html>