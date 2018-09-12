<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "net.snak.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("값 없는데");
	%><jsp:forward page="loginView.jsp"/><%
}
	
	String screen="../main.jsp";
	screen=request.getParameter("screen");
	pageContext.setAttribute("screen", screen);
%>
<%
	snakVO vo = new snakVO();
	vo=(snakVO)request.getAttribute("beans");
	session.setAttribute("vo",vo);
	String val = "error";
	switch(vo.getCategory()){
		case 1 : val="파이"; break;
		case 2 : val="스낵"; break;
		case 3 : val="비스킷"; break;
		case 4 : val="껌"; break;
		case 5 : val="캔디"; break;
		case 6 : val="초콜릿"; break;
		default : break;
	} 
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Snack Detail</title>
</head>
<body>
	<div>
	<%	
		if(!val.equals("error")){ 
	%>
	
	<a href="./adminSnakDelete.snak?num=<%=vo.getNum()%>">delete</a>
	<a href="./admin/snakModify.jsp?vo=<%=request.getAttribute("beans")%>">edit</a>
		<table border="1">
			<tr>
				<td>과자종류</td><td>이름</td>
				<td>번호</td><td>이미지</td>
				<td>썸네일</td><td>제목</td>
				<td>내용1</td><td>내용</td>
				<td>신상품</td>
			</tr>
			<tr>
				<td><%=val %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getNum() %></td>
				<td><img src="<%=vo.getImage( )%>"></td>
				<td><img src="<%=vo.getTh_image()%>"></td>
				<td><%=vo.getTitle() %></td>
				<td><%=vo.getContext1() %></td>
				<td><%=vo.getContext2() %></td>
				<td><%=vo.getIsNew() %></td>
			</tr>
		</table>
	<%	}else{
		%>ERROR : no data found<%
	} %>
	</div>
</body>
</html>