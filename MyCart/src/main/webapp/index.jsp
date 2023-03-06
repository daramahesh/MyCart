<%@page import="com.mycart.helper.FactoryProvider"%>
<html>
<body>
<h2>Hello World!</h2>

<h1>creating session factory object</h1>

<%
out.println(FactoryProvider.getFactory());

%>
<br>
<a href="register.jsp">Register</a><br>
<a href="login.jsp">Login</a>
</body>
</html>
