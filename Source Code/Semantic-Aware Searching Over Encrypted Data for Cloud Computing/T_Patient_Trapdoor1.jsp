<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
                          <%
						  
						  
		
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	
	int uid = Integer.parseInt(request.getParameter("usid"));
	try 
	{
		String query1="select * from patient_request where id='"+uid+"'";
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
		if(rs1.next())
		{
			String user =rs1.getString(2);
			String owner =rs1.getString(3);
			String pname =rs1.getString(4);
			
			String query="select * from patient_details where patient_name='"+pname+"' and downer='"+owner+"'";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			if(rs.next())
			{
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(11);//desc
				s4=rs.getString(12);//trapdoor
				
				if(s4.equalsIgnoreCase("No"))
				{
					String namefile=request.getRealPath("s2");
					PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
					p.print(new String(s3));
					String h1="";
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(namefile+"/");
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
					int b1 = bis1.read();
					if (b1 == -1)
					break;
					}
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					h1 = bi1.toString(16);
					
					
					Statement st2 = connection.createStatement();
					st2.executeUpdate ("update patient_details set desc_trap='"+h1+"' where id='"+i+"'");
					
					st2.executeUpdate ("update patient_details_backup set desc_trap='"+h1+"' where patient_name='"+pname+"' and downer='"+owner+"'");
					
					st2.executeUpdate ("update patient_request set p_trapdoor_req='"+h1+"' where id='"+uid+"'");
							response.sendRedirect("T_TrapdoorGen.jsp");

				}
				else
				{
					Statement st2 = connection.createStatement();
					st2.executeUpdate ("update patient_request set p_trapdoor_req='"+s4+"' where id='"+uid+"'");				
							response.sendRedirect("T_TrapdoorGen.jsp");

				
				}
			}
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			String strQuery2 = "insert into trapdoor_generation(user,fname,owner,status,dt) values('"+user+"','"+"(Patient)"+pname+"','"+owner+"','Generated TD','"+dt+"')";
			st.executeUpdate(strQuery2);
		}	
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>