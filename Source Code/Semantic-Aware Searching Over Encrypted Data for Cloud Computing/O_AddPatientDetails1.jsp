<title>Patient Details</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>



<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String p_name=null;     
        			String bloodgroup=null;
					String disease=null;
					String age=null;
					String p_address=null;
					String p_dob=null;
				    String p_gender=null;
					String p_email=null;
					String p_mobile=null;
					String p_desc_fn=request.getParameter("p_desc_fn");
					String p_desc_cont=null;
					
				
					FileInputStream fs=null;
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("p_name"))
							{
								p_name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bloodgroup"))
							{
								bloodgroup=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("disease"))
							{
								disease=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("age"))
							{
								age=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p_address"))
							{
								p_address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p_dob"))
							{
								p_dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("p_gender"))
							{
								p_gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p_email"))
							{
								p_email=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("p_mobile"))
							{
								p_mobile=multi.getParameter(paramname);
							}
									
							if(paramname.equalsIgnoreCase("p_desc_fn"))
							{
								p_desc_fn=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p_desc_cont"))
							{
								p_desc_cont=multi.getParameter(paramname);
							}
						
						}
						
						String namefile=request.getRealPath("p_desc_fn");
      		PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
			p.print(new String(p_desc_cont));
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
			
			
			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();
				String pk = String.valueOf(pub);
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
						}
						FileInputStream fs1 = null;
						int lyke=0;
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

			 			String query1="select * from patient_details  where patient_name='"+p_name+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
							
					if ( rs1.next() )
					   {
					   		
								out.println("Patient Name Already Exits");							
							%>
							<p><a href="O_Main.jsp">Back</a>         </p>
				
							
							<h3>
							  <%
					   }
					   else
					   {
					PreparedStatement ps=connection.prepareStatement("insert into patient_details(patient_name,blood_group,disease,age,dob,gender,email,mobile,address,p_desc,desc_trap,desc_sk,dt) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,p_name);
						ps.setString(2,bloodgroup);
						ps.setString(3,disease);	
						ps.setString(4,age);
						ps.setString(5,p_dob);
						ps.setString(6,p_gender);
						ps.setString(7,p_email);
						ps.setString(8,p_mobile);
						ps.setString(9,p_address);
						ps.setString(10,p_desc_cont);
						ps.setString(11,h1);
						ps.setString(12,pk);
						ps.setString(13,dt);
						
						
						
						int x=ps.executeUpdate();
						if(x>0){
									%>
							  <span class="style3">Patient Details Added Sucessfully</span></h3>
							<p><a href="O_Main.jsp">Back</a></p>
									<%
								}
						}
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
