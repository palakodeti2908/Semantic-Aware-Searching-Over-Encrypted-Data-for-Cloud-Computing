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
<title>Cloud </title>
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
.style2 {
	font-size: 24px;
	font-family: Geneva, Arial, Helvetica;
	color: #FFFFFF;
}
.style4 {font-family: Geneva, Arial, Helvetica}
.style32 {font-size: 12px}
.style33 {color: #FF0000}
.style34 {font-size: 12px; color: #FF0000; }
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
          <li><a href="C_Main.jsp" class="active">CLOUD</a></li>
          <li><a href="C_Login.jsp">LOGOUT </a></li>
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
            <h2>View Documents </h2>
            <p>&nbsp;</p>
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String fname=request.getParameter("fname");	
try 
	{
      		String query="Select *from document where fname='"+fname+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					s7=rs.getString(7);
					s8=rs.getString(8);
					s9=rs.getString(9);
				}	

		
						%>
            <table width="549" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="142" height="36" bgcolor="#FFFF00"><div align="center" class="style29 style32 style33">
                    <div align="left"><strong> ID :</strong></div>
                </div></td>
                <td width="394"><label>
                  <input readonly="readonly"  name="textfield" type="text" value="<%=i%>" size="49" />
                  </label>                </td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>File Name : </strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield2" type="text" size="49" value="<%=s2%>" />                </td>
              </tr>
              <tr>
                <td height="186" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Contents :</strong></div>
                </div></td>
                <td><label>
                  <textarea readonly="readonly" rows="10"  cols="50"  name="textarea"><%=s3%></textarea>
                  </label>                </td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Trapdoor :</strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s4%>" size="49" /></td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Secret Key  :</strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s5%>" size="49" /></td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Rank : </strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield32" type="text" value="<%=s6%>" size="49" /></td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Date &amp; Time :</strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s7%>" size="49" /></td>
              </tr>
              <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Data Owner : </strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s8%>" size="49" /></td>
              </tr>
			      <tr>
                <td height="36" bgcolor="#FFFF00"><div align="center" class="style34">
                    <div align="left"><strong>Domain : </strong></div>
                </div></td>
                <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s9%>" size="49" /></td>
              </tr>
              <%
			 		
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p align="right"><a href="C_ViewDoc.jsp">Back</a></p>
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5>
			<span class="style4"><ul>
			<li><a href="C_Main.jsp">Home</a></li><br />
			<li><a href="C_Login.jsp">Logout</a></li>
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
