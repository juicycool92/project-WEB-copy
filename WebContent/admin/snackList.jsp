<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="net.snak.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String isLogin="";
	List<snakVO> list;
	if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
		System.out.print("�� ���µ�");
		%><jsp:forward page="loginView.jsp"/><%
	}

	list =(List)request.getAttribute("goodsList");
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Snack List</title>
</head>
<body >
	<div align="center">
	<a href="./admin/snakAdd.jsp" >add</a>
	<table border="1">
		<tr>
			<td>��ȣ</td>
			<td>����</td>
			<td>�̸�</td>
			<td>�Ż�</td>
			<td>��</td>
		</tr>
		<%
		snakVO vo = new snakVO();
		for(int i = 0 ; i <list.size() ; i++){
			vo = list.get(i);
		%><tr>
			<td><%=vo.getNum() %></td>			
			<td><%
				int num=vo.getNum();
				String val="err";
				switch(vo.getCategory()){
					case 1 : val="����"; break;
					case 2 : val="����"; break;
					case 3 : val="��Ŷ"; break;
					case 4 : val="��"; break;
					case 5 : val="ĵ��"; break;
					case 6 : val="���ݸ�"; break;
					default : break;
				}
			%><%=val%> </td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getIsNew() %></td>
			<td>
			<a href="./adminSnakDetail.snak?num=<%=num%>">edit</a></td>
		</tr><%
		}
		%>
	</table>
	</div>
</body>
</html>