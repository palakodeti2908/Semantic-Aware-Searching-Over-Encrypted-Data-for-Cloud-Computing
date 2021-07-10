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
.style31 {font-size: 24px}
.style34 {font-size: 12px}
.style36 {color: #A2912D}
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
      <!-- end #slideshow -->
      <div class="controls-center">
        <div id="slider_controls">
          <h2>&nbsp;</h2>
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
            <h2>Document Verification Status </h2>
            <p class="infopost">&nbsp;</p>
            <div class="img"></div>
            <div class="post_content">
              <%
			String dname=(String)application.getAttribute("doname");
			String pname=request.getParameter("pname");
	try 
	{
		String msg="";
		String que="select * from patient_details_backup where patient_name='"+pname+"'";
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(que);
		if(rs.next())
		{
			String pat_name=rs.getString(2);
			String pdesc=rs.getString(11);
			String ptrap=rs.getString(12);
			
						
				Statement st3=connection.createStatement();
				String quer="update patient_details set p_desc='"+pdesc+"' , desc_trap ='"+ptrap+"' where patient_name='"+pname+"'";
				int rs3=st3.executeUpdate(quer);
				if(rs3>0)
				{
				
						%>
              <h3 align="left" class="style31">Patient Description <span class="style36">Recovered Successfully</span> !!  .. </h3>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <div align="right"><a href="O_ViewPatientDetails.jsp" class="style34">Back</a><br />
              </div>
              <%
					
				}
		}	
	}
	catch(Exception e)
	{
	out.print(e);
	}
	%>
            </div>
            <p>&nbsp;</p>
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5><span class="style4">
              <ul>
                <li><a href="O_Main.jsp">Home</a></li>
                <br />
                <li><a href="O_Login.jsp">Logout</a></li>
                <br />
              </ul>
            </span> </h5>
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
