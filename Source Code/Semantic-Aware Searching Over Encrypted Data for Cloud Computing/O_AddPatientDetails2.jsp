<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#slideshow').cycle({
        fx:     'fade',
        speed:  'slow',
        timeout: 5000,
        pager:  '#slider_nav',
        pagerAnchorBuilder: function(idx, slide) {
            // return sel string for existing anchor
            return '#slider_nav li:eq(' + (idx) + ') a';
        }
    });
});
</script>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-family: Geneva, Arial, Helvetica;
}
.style2 {
	font-size: 24px;
	font-family: Geneva, Arial, Helvetica;
	color: #FFFFFF;
}
.style4 {font-family: Geneva, Arial, Helvetica}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
</head>
<body>
<div class="main">
  <div class="header_resize">
    <div class="header">
      <div class="logo">
       <h1 class="style2">Semantic-Aware Searching Over Encrypted Data for Cloud Computing</h1>

      </div>
      <div class="menu">
     <ul>
          <li><a href="O_Main.jsp" class="active">Hi <%=application.getAttribute("doname")%> !!</a></li>
          <li><a href="O_Login.jsp">LOGOUT </a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="header_blog">
    <div id="slider">
      <!-- start slideshow -->
      <div id="slideshow">
        <div class="slider-item">
          <div class="text_item">
            <h1 class="style2">Semantic-based keyword search,</h1>
            <p align="justify">System proposed the idea of searchable encryption (SE) that allows users to search on encrypted data through a keyword. Subsequently, various searchable encryption schemes were proposed to meet different requirements such as fuzzy keyword search [2]–[4], multikeyword search [5]–[8], ranked keyword search and semantic-based keyword search</p>
          <a href="#"><img src="images/more_information.gif" alt="" width="141" height="33" border="0" /></a></div>
          <a href="#"><img src="images/simple_img_1.jpg" alt="" width="511" height="323" border="0" /></a></div>
        <div class="slider-item">
          <div class="text_item"> 
            <h1 class="style2">Semantic similarity</h1>
            <p align="justify">In practice, semantic-based keyword search not only is convenient for users but also exactly expresses users’ intentions. Specifically, in some circumstances, users might not be familiar with the encrypted documents stored in cloud storage or might only want the semantically related results; therefore, the search keywords are usually semantically related to the document rather than via an exact or fuzzy match.</p>
            <a href="#"><img src="images/more_information.gif" alt="" width="141" height="33" border="0" /></a></div><a href="#"><img src="images/simple_img_2.jpg" alt="" width="511" height="323" border="0" /></a></div>
        <div class="slider-item">
          <div class="text_item">
            <h1 class="style2"> k-Nearest Neighbor...</h1>
            <p align="justify"><strong>To protect the privacy of documents and queries, fully homomorphic encryption (FHE) technique could be chosen to encrypt them, which allows data servers perform some flexible functions over encrypted data. However, the existing FHE schemes are far from being practical for real applications, because all of them are too complicated and inefficient  Hence, we adopt a secure k-Nearest Neighbor (SkNN) to encrypt the index and query</strong></p>
            <a href="#"><img src="images/more_information.gif" alt="" width="141" height="33" border="0" /></a></div>
          <a href="#"><img src="images/simple_img_3.jpg" alt="" width="511" height="323" border="0" /></a></div>
      </div>
      <!-- end #slideshow -->
      <div class="controls-center">
        <div id="slider_controls">
          <h2>&nbsp;</h2>
          <ul id="slider_nav">
            <li><a href="#"></a></li>
            <!-- Slide 1 -->
            <li><a href="#"></a></li>
            <!-- Slide 2 -->
            <li><a href="#"></a></li>
            <!-- Slide 3 -->
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="body">
    <div class="search_bg"> <a href="#"></a>
      <div class="search">
        <form id="form1" name="form1" method="post" action="#">
          <span>
          <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
          </span>
          <input name="b" type="image" src="images/search.gif" class="button" />
        </form>
      </div>
      <div class="clr"></div>
    </div>
    <div class="body_resize">
      <div class="body_resize_top">
        <div class="body_resize_bottom">
          <div class="blogcont" >
            <h2>Patient Details</h2>
            <p align="justify">&nbsp;</p>
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
					String doname=(String)application.getAttribute("doname");
				
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
						
					
			
			String r="0";
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
					PreparedStatement ps=connection.prepareStatement("insert into patient_details(patient_name,blood_group,disease,age,dob,gender,email,mobile,address,p_desc,desc_trap,desc_sk,dt,downer,des_rank) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
						ps.setString(11,"No");
						ps.setString(12,pk);
						ps.setString(13,dt);
						ps.setString(14,doname);
						ps.setString(15,r);
						
						PreparedStatement ps1=connection.prepareStatement("insert into patient_details_backup(patient_name,blood_group,disease,age,dob,gender,email,mobile,address,p_desc,desc_trap,desc_sk,dt,downer) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps1.setString(1,p_name);
						ps1.setString(2,bloodgroup);
						ps1.setString(3,disease);	
						ps1.setString(4,age);
						ps1.setString(5,p_dob);
						ps1.setString(6,p_gender);
						ps1.setString(7,p_email);
						ps1.setString(8,p_mobile);
						ps1.setString(9,p_address);
						ps1.setString(10,p_desc_cont);
						ps1.setString(11,"No");
						ps1.setString(12,pk);
						ps1.setString(13,dt);
						ps1.setString(14,doname);
						
						ps1.executeUpdate();
						int x=ps.executeUpdate();
						if(x>0){
									%>
							  <span class="style3">Patient Details Added Sucessfully</span> !! </h3>
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
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5><span class="style4"><ul>
			<li><a href="O_Main.jsp">Home</a></li><br />
			<li><a href="O_Login.jsp">Logout</a></li>
			<br />
			</ul></span>
            </h5>
          </div>
          <div class="clr"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="footer">
    <div class="footer_resize"> <a href="#"></a>
      <p class="right"><br />
      </p>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>
