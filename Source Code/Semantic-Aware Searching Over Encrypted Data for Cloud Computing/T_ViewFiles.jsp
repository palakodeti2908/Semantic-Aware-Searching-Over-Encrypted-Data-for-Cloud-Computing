<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trapdoor Generation Centre</title>
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
.style21 {font-size: 14px}
.style23 {color: #666666; font-weight: bold;}
.style29 {	color: #CC3366;
	font-size: 12px;
	font-weight: bold;
	font-style: italic;
}
.style30 {color: #FFFF00}
.style31 {color: #FFFF00; font-weight: bold; }
.style32 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header_resize">
    <div class="header">
      <div class="logo">
        <h1 class="style1">Semantic based Compound Keyword Search over Encrypted Cloud Data<br />
        </h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="T_Main.jsp" class="active">TRUSTED AUTHORITY </a></li>
          <li><a href="T_Login.jsp">LOGOUT </a></li>
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
            <h2>Trapdoor Generated Documents </h2>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <span class="style29">Documents With Trapdoor : </span>
            <p>&nbsp;</p>
            <table width="567" border="1.5" cellpadding="0" style="border-collapse:collapse" cellspacing="0"  align="center">
              <tr>
                <td width="25" height="30" bgcolor="#FF0000"><div align="center" class="style23 style30"> ID </div></td>
                <td width="105" bgcolor="#FF0000"><div align="center" class="style31">Document  </div></td>
                <td width="171" bgcolor="#FF0000"><div align="center" class="style31">Trapdoor</div></td>
                <td width="102" bgcolor="#FF0000"><div align="center" class="style31">Data Owner </div></td>
                <td width="152" bgcolor="#FF0000"><div align="center" class="style31">View</div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

  	try 
	{
      
		   
		   
      	   String query="select * from document where trapdoor!='No'";
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while(rs.next())
		   {
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(4);
				s4=rs.getString(8);
				
		%>
              <tr>
                <td height="28"><div align="center" class="style21"><%=i%></div></td>
                <td><div align="center" class="style21"><%=s2%></div></td>
                <td><div align="center" class="style21"><%=s3%></div></td>
                <td><div align="center" class="style21"><%=s4%></div></td>
                <td><div align="center" class="style21"><a href="T_DocumentDetails.jsp?fname=<%=s2%>">View More ...</a></div></td>
              </tr>
              <%
			  }
     
%>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <span class="style29">Patient Records With Trapdoor :  </span>
            <p>&nbsp;</p>
            <table width="567" border="1.5" cellpadding="0" style="border-collapse:collapse" cellspacing="0"  align="center">
              <tr>
                <td width="25" height="30" bgcolor="#FFFF00"><div align="center" class="style32"> ID </div></td>
                <td width="109" bgcolor="#FFFF00"><div align="center" class="style32">Patient Name </div></td>
                <td width="169" bgcolor="#FFFF00"><div align="center" class="style32">Trapdoor</div></td>
                <td width="95" bgcolor="#FFFF00"><div align="center" class="style32">Data Owner </div></td>
                <td width="157" bgcolor="#FFFF00"><div align="center" class="style32">View</div></td>
              </tr>
              <%

	

        
		 
		   
		   
      	   String query1="select * from patient_details where desc_trap!='No'";
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
		   while(rs1.next())
		   {
				j=rs1.getInt(1);
				s6=rs1.getString(2);
				s7=rs1.getString(12);
				s8=rs1.getString(15);
				
		%>
              <tr>
                <td height="28"><div align="center" class="style21"><%=j%></div></td>
                <td><div align="center" class="style21"><%=s6%></div></td>
                <td><div align="center" class="style21"><%=s7%></div></td>
                <td><div align="center" class="style21"><%=s8%></div></td>
                <td><div align="center" class="style21"><a href="T_PatientDetails.jsp?pname=<%=s6%>">View More ...</a></div></td>
              </tr>
              <%
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            <p align="justify">&nbsp;</p>
            <p align="right"><a href="T_Main.jsp">Back</a></p>
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5>
			<span class="style4"><ul>
			<li><a href="T_Main.jsp">Home</a></li><br />
			<li><a href="T_Login.jsp">Logout</a></li>
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
