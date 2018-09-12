<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*" %>
    <%@page import="net.epress.db.*" %>
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
	pressVO vo = null;
	List<pressVO> listVO= (ArrayList<pressVO>)request.getAttribute("list");
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table border="1">
			<tr>
				<td>num</td><td>title</td><td>date</td><td>count</td>
			</tr>
			
			<%
				for(int i = 0 ; i < listVO.size() ; i++){
					vo = listVO.get(i);
					%><tr><td><%=vo.getNum() %></td><% 
					%><td><a href="pressDetail.epress?kind=1&num=<%=vo.getNum()%>&count=0"><%=vo.getTitle() %></a></td><% 
					%><td><%=vo.getUploaddate() %></td><% 
					%><td><%=vo.getCount() %></td></tr>
				<%}%>
		</table>
	</div>
	
</body>
</html>