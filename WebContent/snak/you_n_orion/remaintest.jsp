<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>



<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="net.board.db.*"%>

<%
	int a = 0;

	String NAME = null;

	if (session.getAttribute("NAME") != null) {
		NAME = (String) session.getAttribute("NAME");
	}

	List boardList = (List) request.getAttribute("boardlist");
	int listcount = ((Integer) request.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();
	int endpage = ((Integer) request.getAttribute("endpage")).intValue();
%>



					<div style="padding: 30px 0px 10px 0px;">

						<%=NAME%>님의 의견 접수 내역이
						<%=listcount%>건 조회되었습니다.<br />수정하실 내역을 클릭하여 주십시오.
					</div>

					<table summary="의견 접수 내역" class="boardListType">
						<caption>의견 접수 내역</caption>
						<colgroup>
							<col width="auto" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><img
									src="images/board/txt_title_lst.gif" alt="제목" /></th>
								<th scope="col" class="end"><img
									src="images/board/txt_date_lst.gif" alt="작성일" /></th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 0; i < boardList.size(); i++) {
									BoardBean bl = (BoardBean) boardList.get(i);
							%>
							<tr align="center" valign="middle">


								<td height="23" style="font-family: Tahoma; font-size: 10pt;"
									align="left"><a
									href="BoardModifyView.bo?NUM=<%=bl.getNUM()%>&PWD=<%=bl.getPWD()%>">
										<%=bl.getTITLE()%></a></td>
										<td><%=bl.getDAY()%></td>
									
						
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
