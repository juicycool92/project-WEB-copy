<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.*"%>
<%@page import="net.epress.db.*"%>
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
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div>
		<a href="pressDetail.epress?num=<%=vo.getNum()%>&kind=3&count=0">edit</a> <a href="pressDelete.epress?num=<%=vo.getNum()%>">delete</a>
	</div>
	<div>
		<table border="1">
			<tr>
				<td>num</td>
				<td>title</td>
				<td>date</td>
				<td>count</td>
			</tr>
			<tr>
				<td><%=vo.getNum()%></td>
				<td><%=vo.getTitle()%></td>
				<td><%=vo.getUploaddate()%></td>
				<td><%=vo.getCount()%></td>
			</tr>
			<tr>
				<td colspan="4"><%=vo.getContext()%></td>
			</tr>
		</table>
	</div>

	</div>
</body>
</html>