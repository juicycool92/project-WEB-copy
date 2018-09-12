<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>login Admin</title>
</head>
<body>
	<center>
      <form action="../login.snak" method="post">
         <table border="1">
            <tr>
               <td align="center">ID:</td>
               <td align="center"><input type="text" name="id" id="userId"></td>
            </tr>

            <tr>
               <td align="center">PW:</td>
               <td align="center"><input type="password" name="pw" id="pw"></td>
            </tr>
            
            <tr>
               <td colspan="2" align="center"><input type="submit" value="로그인하기"></td>
            </tr>
            
         </table>
      </form>
   </center>
</body>
</html>