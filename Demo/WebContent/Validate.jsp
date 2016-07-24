<%@ page import="java.sql.*"  %>
<%@ page import="connection.DataCon" %>

<%
      
   Connection con=null;
   Statement st=null;
   ResultSet rs=null;
   DataCon ds =new DataCon();
   String uname=request.getParameter("UserName");
   String pas=request.getParameter("Password");
   System.out.println(uname);
   System.out.println(pas);
   
	 try{
		   con=ds.getConnection1();
		   st=con.createStatement();
		   rs=st.executeQuery("select * from emp where empid='"+uname+"'");
		   System.out.println("rs"+rs);
		    while(rs.next())
		 {
				System.out.println("inside while");
				String user1=rs.getString(1);
				String password=rs.getString(3);
				System.out.println(user1);
				System.out.println(password);
				if(uname.equals(user1)&&pas.equals(password))
			 {
					
						 System.out.println("inside if");
					     //System.out.println(password);
						 String profile=rs.getString(2);
						 if(pas.equals(password))
						 {
							   System.out.println("inside pass equal");
							  if(profile.equals("admin"))
							      response.sendRedirect("admin.jsp");
							  else if(profile.equals("client"))
								    response.sendRedirect("client.jsp");
							  else if(profile.equals("driver"))
								    response.sendRedirect("driver.jsp");
						  }
						  else
						            response.sendRedirect("login.jsp");

					 
			 }//if
			 else
				 response.sendRedirect("login.jsp?msg='Incorrect Username or Password - Re-Check '");
		 }//while
		    
     }catch(Exception e){System.out.println(e);}

	 //con.close();
	 %>
