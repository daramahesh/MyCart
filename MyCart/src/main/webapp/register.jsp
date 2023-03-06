<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <form action="RegisterServlet" method="post"> <br>
       Enter username: <input type="text" name="username"> <br>
	   Enter userEmail: <input type="text" name="useremail"> <br>
	   Enter userPassword: <input type="password" name="userpassword"><br>
       Enter userPhone: <input type="number" name="userphone"><br>
       Enter userAddress: <input type="text" name="useraddress"><br>
       <input type="submit" value="register">
   </form>
   
   <%
      String message = (String)session.getAttribute("message");
      if(message!=null){
      out.println(message);
      } 
   %>
   <br>
   <a href="login.jsp">login</a>

</body>
</html>