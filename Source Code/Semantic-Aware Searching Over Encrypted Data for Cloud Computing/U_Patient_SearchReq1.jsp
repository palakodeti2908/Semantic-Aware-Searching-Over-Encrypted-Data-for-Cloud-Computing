<title>Search Permission Request</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String name=(String)application.getAttribute("uname");
	String msg="";
	try
	{
		String query="select * from user where name='"+name+"'";
		Statement st = connection.createStatement();
		ResultSet rs1 =st.executeQuery(query);
		if(rs1.next())
		{
			String p_search_per = rs1.getString(13);
			if(p_search_per.equalsIgnoreCase("Requested"))
			{
				msg="Request Already Sent !!";
				response.sendRedirect("U_Patient_SearchReq.jsp");
				application.setAttribute("msg",msg);
			}
			else  if(p_search_per.equalsIgnoreCase("No"))
			{
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				Date now = new Date();
				
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
					
					String sql="update user set p_search_req='Requested' where  name='"+name+"'";
					Statement stmt = connection.createStatement();
					int rs =stmt.executeUpdate(sql);
					if(rs==1)
					{
						
							msg=" Request Sent Successfully !!";
							application.setAttribute("msg",msg);
							response.sendRedirect("U_Patient_SearchReq.jsp");
					}
					
			}
		}	
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>