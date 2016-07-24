<html>
<head>
<title>Login</title>
<meta name="Microsoft Theme" content="blueprnt 011">
<SCRIPT language="JavaScript">
  	function validate()
  	{
	  	if(document.frm.UserName.value==""||document.frm.Password.value=="")
		{
			alert("UserName or Password cannot be blank!!");
            document.frm.UserName.focus();
             return false;
			//return;
  		
	  	/* document.frm.action="Validate.jsp";
  		document.frm.submit(); */
  	}

	}
	</SCRIPT>
	<style>
	body {
	    background-image: url(./images/AAI_Logo.png);
	    background-repeat: no-repeat;
	    background-attachment: fixed;
	    background-position: center;
	}
	</style>
	</head>	
   <body>
<%
String msg=request.getParameter("msg");
%>
	
   <table border="0" width="80%">
  
    <div align="center">
    <center>
      
	  <tr>
        <td width="100%">
          <div align="center">
            <table border="0" width="100%" height="129">
              <td width="20%" height="125">
			<br></td>
             <td width="80%" height="125">
		  <table  border="0" width="100%" height="225">
		<tr align="center">  		 
		  <td  colspan=2 width="360" height="70" >
         <p align="center"><font face ="Garamond"color="#6600FF" size="5">&nbsp;</font><font size="5">
       Login Form </dfn></u></font></H1>
 	 </td>
   </tr>
     <tr>
     <td background="PoliceCrimeBkng.jpg" width="267" align="right" height="15">
	 <FONT SIZE="2" face=verdana COLOR="#FF0066"><B><%=msg%></B></FONT>
	 </tr><br>
	  <form name =frm method="POST" action="Validate.jsp" onSubmit="return validate()">
	  <tr>
	  <td width="267" align="right" height="20">
	  <b><font face="Garmond" size="3">User Name </font></b></td>
	   <td width="344" height="40">
       <input type="text" name="UserName" size="20" >
        </td>
       </tr>
       <tr>
       <td width="267" align="right" height="28"><b><font size="3" face="Garmond">Password</font></b></td>
         <td width="344" height="28">
		 <input type="password" name="Password" size="20" >
		 </td>
	        </tr>
			
		 <TR align="center">
    	<TD colspan=2>
            <p>
    		<input type="submit"  value="Login" name="B1"> 
            </p>
			</form>
			</TD>
			</TR>
    
  </table>
   </table>
 </body>
</html>