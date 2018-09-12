<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.board.db.*"%>

<%
	int a = 0;

	List boardList = (List) request.getAttribute("boardlist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();
%>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
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
				<td>NAME</td>
				
				<td>NUM</td>
				<td>TITLE</td>
				<td>ETC</td>
				<!-- ETC 테이블 따로 하나 만들어야겟다 -->
				
				
				
				<td>EMAIL</td>
				<td>DAY</td>
			</tr>
			<%
				for (int i = 0; i < boardList.size(); i++) {
					BoardBean bl = (BoardBean) boardList.get(i);
			%>
			<tr>
				<td><a
					href="AdminDetailAction.ad?NUM=<%=bl.getNUM()%>">
						<%=bl.getNAME()%></a></td>
						
							<td><%=bl.getNUM() %></td>
							<td><%=bl.getTITLE() %></td>
							<td><%=bl.getETC() %></td>
							
							
							
							<td><%=bl.getEMAIL_1() %>@<%=bl.getEMAIL_2() %></td>
							<td><%=bl.getDAY() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>