<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  body{
   display:flex;
   justify-content:center;
   align-items:center;
  }
  form{
  display:flex;
  flex-direction:column;
   justify-content:center;
   align-items:center;
  }
</style>
</head>

<body>
    <form action="direct.jsp">
      <input type="text" name="user" placeholder="username">
      <input type="text" name="pass" placeholder="password">
      <input type="submit" value="login">
    </form>
</body>
</html>