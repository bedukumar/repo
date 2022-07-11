<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String user=request.getParameter("user");
   String pass=request.getParameter("pass");
   Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	PreparedStatement pst=con.prepareStatement("select * from usersdata where pass='"+pass+"' and users='"+user+"'");
	ResultSet rSet=pst.executeQuery();
	if(rSet.next()){
		out.print("login successfull");
	}else{
		out.print("please give your correct username and password");
	}
%>
</body>
</html>