<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "net.snak.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("�� ���µ�");
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
		case 1 : val="����"; break;
		case 2 : val="����"; break;
		case 3 : val="��Ŷ"; break;
		case 4 : val="��"; break;
		case 5 : val="ĵ��"; break;
		case 6 : val="���ݸ�"; break;
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
				<td>��������</td><td>�̸�</td>
				<td>��ȣ</td><td>�̹���</td>
				<td>�����</td><td>����</td>
				<td>����1</td><td>����</td>
				<td>�Ż�ǰ</td>
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