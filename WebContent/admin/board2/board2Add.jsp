<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
if(session.getAttribute("isLogin")==null||session.getAttribute("isLogin").equals("")){
	System.out.print("값 없는데");
	%><jsp:forward page="../loginView.jsp"/><%
}
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form name="f1" action="../../BoardAddAction.bo2" method="post"
							enctype="multipart/form-data">
							<table>
								<tr>
									<td>내용</td>
									<td><input type="text" size="50" name="BOARD_CONTENT"></td>
								</tr>
								<tr>
									<td>파일</td>
									<td><input type="file" size="50" name="BOARD_FILE"></td>
								</tr>
								<tr>
									<td>투자의견</td>
									<td><input type="radio" name="BOARD_OPINION" value="BUY">BUY
										<input type="radio" name="BOARD_OPINION" value="HOLD">HOLD</td>
								</tr>
								<tr>
									<td>목표가</td>
									<td><input type="text" size="50" name="BOARD_GOAL"></td>
								</tr>
								<tr>
									<td>출처</td>
									<td><input type="text" size="50" name="BOARD_SOURCES"></td>
								</tr>

								<tr align="center">
									<td align="center" colspan="2"><input type="button"
										value="취소" onclick="history.go(-1)"> <input
										type="submit" value="전송"></td>
								</tr>

							</table>
						</form>
</body>
</html>