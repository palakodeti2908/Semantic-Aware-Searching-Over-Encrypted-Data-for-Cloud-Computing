<title>Authentication Page</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
   	String pname=request.getParameter("t14");      
   	String uname=(String)application.getAttribute("uname");
	String key="";
	try
	{
		String sql1="SELECT * FROM patient_details where patient_name='"+pname+"'";
		Statement stmt1 = connection.createStatement();
		ResultSet rs1 =stmt1.executeQuery(sql1);
		if(rs1.next())
		{
			String sql="SELECT * FROM patient_request where user='"+uname+"' and pname='"+pname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
				key=rs.getString(5);
				if (key.equalsIgnoreCase("No"))
				{
					key=" Trapdoor Not Requested !!";
					application.setAttribute("key",key);
					response.sendRedirect("U_Res_Patient_Trap.jsp");
				}
				else if (key.equalsIgnoreCase("Requested"))
				{
					key=" Trapdoor Not Permitted !!";
					application.setAttribute("key",key);
					response.sendRedirect("U_Res_Patient_Trap.jsp");
				}
				else if (key.equalsIgnoreCase("Permitted"))
				{
					String sql2="SELECT * FROM patient_details where patient_name='"+pname+"'";
					Statement stmt2 = connection.createStatement();
					ResultSet rs2 =stmt2.executeQuery(sql2);
					if(rs2.next())
					{		
					   String mskey = rs2.getString(12);
					   if(mskey.equalsIgnoreCase("No"))
					   {
							key=" Trapdoor Not Generated !!";
							application.setAttribute("key",key);
							response.sendRedirect("U_Res_Patient_Trap.jsp");
						}
						else
						{
							application.setAttribute("key",mskey);
							response.sendRedirect("U_Res_Patient_Trap.jsp");
					   }
					}
				}
				else
				{
					application.setAttribute("key",key);
							response.sendRedirect("U_Res_Patient_Trap.jsp");
				}
			}
			else
			{
				key="Search Permission Not Requested !!";
				response.sendRedirect("U_Res_Patient_Trap.jsp");
				application.setAttribute("key",key);
			}
		
		}
		else
		{
			key="Patient Records Not Found !!";
			response.sendRedirect("U_Res_Patient_Trap.jsp");
			application.setAttribute("key",key);
		}
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>