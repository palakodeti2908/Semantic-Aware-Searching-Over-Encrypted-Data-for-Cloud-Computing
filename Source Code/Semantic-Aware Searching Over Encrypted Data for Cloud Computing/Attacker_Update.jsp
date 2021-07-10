<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
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
.style29 {
	color: #CC3366;
	font-size: 12px;
	font-weight: bold;
	font-style: italic;
}
.style30 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
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
          <li><a href="Attackers.jsp" class="active">ATTACKER</a></li>
          <li><a href="index.html">LOGOUT </a></li>
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
            <h2>Documents Contents </h2>
            <p>&nbsp;</p>
            <span class="style29"> Edit Contents And Upload  : </span>
            <p>&nbsp;</p>
            <p>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	
String fname=request.getParameter("fname");	
String owner=request.getParameter("owner");	
String cont=request.getParameter("text");	
String type=request.getParameter("type");	


try 
	{
      		if(type.equalsIgnoreCase("Document"))
			{
			
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue1 = keys.getBytes();
					Key key1 = new SecretKeySpec(keyValue1,"AES");
					Cipher c1 = Cipher.getInstance("AES");
					c1.init(Cipher.ENCRYPT_MODE, key1);
					String encryptedValue = new String(Base64.encode(cont.getBytes()));
					
					
					String namefile=request.getRealPath("fname");
					PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
					p.print(new String(cont));
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
					
					String Query2 = "update document set ct='"+encryptedValue+"', trapdoor='"+h1+"' where fname='"+fname+"' and downer='"+owner+"'";
					connection.createStatement().executeUpdate(Query2);
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
					
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
		
connection.createStatement().executeUpdate("insert into attacker(user,fname,att_key,dt,attacktype) values ('Attacker','"+fname+"' ,'Document','"+dt+"','Content Attack')");
					
					
					%> 
              <span class="style30">Document Contents Edited Sucessfully			</span>!!</p>
            <p><br /> 
              <%
		
			
			}
			if(type.equalsIgnoreCase("Patient"))
			{
			
					
			
					
					
					String namefile=request.getRealPath("fname");
					PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
					p.print(new String(cont));
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
					
					String Query2 = "update patient_details set p_desc='"+cont+"', desc_trap='"+h1+"' where patient_name='"+fname+"' and downer='"+owner+"'";
					connection.createStatement().executeUpdate(Query2);
					
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
					
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
		
connection.createStatement().executeUpdate("insert into attacker(user,fname,att_key,dt,attacktype) values ('Attacker','"+fname+"' ,'Patient','"+dt+"','Content Attack')");
					
					
					%> 
              <span class="style30">Patient Description Edited Sucessfully</span> !!<br /> 
              <%
					
			}



	     connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }		
%>
            </p>
            <p>&nbsp;</p>
            <p align="right"><a href="Attackers.jsp">Back</a></p>
            <p></p>
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5>
			<span class="style4"><ul>
			<li><a href="Attackers.jsp">Home</a></li>
			<br />
			<li><a href="index.html">Logout</a></li>
			<br />
			</ul>
			</span>
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
