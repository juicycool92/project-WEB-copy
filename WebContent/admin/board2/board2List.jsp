<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.*" %>
    <%@page import="net.board2.db.BoardBean"%>
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
	List<BoardBean> boardList =(ArrayList<BoardBean>)request.getAttribute("boardlist");
	BoardBean vo;
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<tr>
			<td>date</td><td>context</td><td>suggesting</td><td>goal</td><td>source</td>
		</tr>
		<%
			for(int i = 0 ; i < boardList.size() ; i++){
				vo=boardList.get(i);
				%>
		<tr>
			<td><%=vo.getBOARD_DATE() %></td>
			<td><a href="boardupload/<%=vo.getBOARD_FILE()%>">download</a></td>
			<td><%=vo.getBOARD_OPINION()%></td>
			<td><%=vo.getBOARD_GOAL()%></td>
			<td><%=vo.getBOARD_SOURCES()%></td>		
		</tr>
				<%
			}
		%>
	</table>
</body>
</html>