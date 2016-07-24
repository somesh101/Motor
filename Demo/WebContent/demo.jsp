<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login form</title>
</head>
<body background="/images/AAI_Logo.png">

<%@  page import="java.sql.*"   %>
<%@  page import="java.util.*"   %>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
try
{
Class.forName("com.mysql.jdbc.Driver");
	
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/motorpool","somesh","maths");
Statement s = c.createStatement();
String  s1="select empid,passphrase from emp  where  empid='"+name+"' and passphrase='"+pass+"';";
//out.println(s1);
ResultSet rs=s.executeQuery(s1);
if(rs.next())
out.println("User is Valid");
else
out.println("User is InValid");
}catch(Exception e){out.println(e);}     

    %>
<form action="login.jsp" method="post">
Enter User Name
<input type="text" name="name"><br>
Enter Password
<input type="password" name="pass"><br>
<input type="submit">
</form>
</body>
</html>



