
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ page import="net.board.db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%BoardBean board = (BoardBean)request.getAttribute("boarddata"); %>
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("값 없는데");
	%><jsp:forward page="../loginView.jsp"/><%
}
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>


		<table>
			<tr>
			<tr>
				<td align="center">제목: <%=board.getTITLE() %></td>

			</tr>

			<TR>
				<TD align="center"><img src="../../<%=board.getI_FILE() %>" ></TD>
				
			</TR>

			<tr>
				<td align="center"><%=board.getCONTENT() %></td>

			</tr>
			<TR></TR>
			<tr>
				<td align="center"><a href="./list.ad">목록보기</a></td>
			</tr>
		</table>


	</center>
</body>
</html>