<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.*"%>
<%@page import="net.epress.db.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("값 없는데");
	%><jsp:forward page="../loginView.jsp"/><%
}
%>
<%
	pressVO vo = (pressVO) request.getAttribute("beans");
	String context =vo.getContext();
	System.out.println(context);
%>
<script type="text/javascript" src="nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		nicEditors.allTextAreas()
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<body>
	<form action="./pressModify.epress">
		제목 :  <input type="text" name="title" size="90" value="<%=vo.getTitle()%>"><br>
		<textarea cols="100" name="area1"><c:out value="<%=context %>"></c:out></textarea><br>
		<input type="hidden" name ="num" value="<%=vo.getNum()%>"><br>
		<br />
		<input type="submit">
		<br>
	</form>
</body>
</html>