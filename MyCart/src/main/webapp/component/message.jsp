<%-- <%@page import="org.hibernate.internal.build.AllowSysOut"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
 String mes=(String)session.getAttribute("message");
if(mes!=null){
	
%>
	
	<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><%=mes %></strong>
 
</div>
	
	
<% 
	
	session.removeAttribute("message");
	
}

%>






</body>
</html>