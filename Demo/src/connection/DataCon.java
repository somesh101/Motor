package connection;

import java.sql.*;
import java.io.*;

public class DataCon 
{
  Connection con;
  
 public Connection getConnection1()
{
   try
 {
 Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/motorpool","somesh","maths");
       System.out.println("Connection connet Sucessfully");
}
catch(Exception e)
{
   e.toString();
}
return con;

}
public void close(Connection con)
	{
	  try{
		   con.close();
	  }catch(Exception e1)
		{}
	}
}