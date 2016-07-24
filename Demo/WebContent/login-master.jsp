<html>
<body>

<%@  page import="java.sql.*"   %>
<%@  page import="java.util.*"   %>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
try
{
	System.out.println("inside try");
	Class.forName("com.mysql.jdbc.Driver");

	Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/motorpool","somesh","maths");

	Statement s = c.createStatement();

	String  s1="select empid,passphrase from emp  where  empid='"+name+"' and passphrase='"+pass+"';";
	//out.println(s1);
	ResultSet rs=s.executeQuery(s1);
	System.out.println("entering while"+rs.getString(1)+rs.getString(2)+rs.getString(3));
	
	while(rs.next())
	{
		System.out.println("inside while");
		if(rs.getString(1).equals(name) && rs.getString(3).equals(pass))
			{System.out.println("query works");
	
			if(rs.getString(2).equals("admin"))
				System.out.println("admin match");//response.sendRedirect("admin.jsp");
			else
				if (rs.getString(2).equals("client"))
					response.sendRedirect("admin.jsp");
				else
					if (rs.getString(2).equals("driver"))
						response.sendRedirect("driver.jsp");
					else response.sendRedirect("login.jsp");}
		else
		response.sendRedirect("login.jsp?msg='Incorrect Username or Password - Re-Check '");
	}
}
catch(Exception e){out.println(e);}

%>
<p>inside login master</p>
</body>
</html>
