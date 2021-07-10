<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User </title>
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
.style28 {
	color: #3f3f3f;
	font-size: 14px;
	font-weight: bold;
}
.style29 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header_resize">
    <div class="header">
      <div class="logo">
        <h1 class="style1">Semantic based Compound Keyword Search over Encrypted Cloud Data</h1>
      </div>
      <div class="menu">
     <ul>
          <li><a href="U_Main.jsp" class="active">Hi <%=application.getAttribute("uname")%> !!</a></li>
          <li><a href="U_Login.jsp">LOGOUT </a></li>
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
            <h2>Searched File Download</h2>
            <form action="U_Download2.jsp" method="post" id="form1">
              <p>
                <%
		  
	try 
	{
		String file = request.getParameter("t1");
		String type = request.getParameter("type");
		String trapdoor="",skey="";
		String sk="",trap_per="";
		String user=(String) application.getAttribute("uname");
		String yes="Permitted";
		
		if(type.equalsIgnoreCase("Patient"))
		{
			String Query5 = "select * from patient_details where patient_name='"+file+"'";
			ResultSet rs5 = connection.createStatement().executeQuery(Query5);
			if(rs5.next()==true)
			{	
				trapdoor=rs5.getString(12);
				skey=rs5.getString(13);
				String	owner=rs5.getString(15);
				
				
				String Query2 = "select * from patient_request where user='"+user+"' and owner='"+owner+"' and pname='"+file+"'";
				ResultSet rs2 = connection.createStatement().executeQuery(Query2);
				if(rs2.next())
				{
					trap_per=rs2.getString(5);
					
					if (trap_per.equalsIgnoreCase("Requested"))
					{
						%>
						</p>
						<h3 >Trapdoor Not Generated!!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					else if (trap_per.equalsIgnoreCase("No"))
					{
						%>
						</p>
						<h3 >Trapdoor Not Requested !!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					else
					{
					String Query4 = "select * from patient_details_backup where  downer='"+owner+"' and patient_name='"+file+"'";
				ResultSet rs4 = connection.createStatement().executeQuery(Query4);
				if(rs4.next())
				{
					String back_trap=rs4.getString(12);
					if(back_trap.equalsIgnoreCase(trapdoor))
					{
						%>
						</p>
						<table width="548" border="0" cellpadding="0" cellspacing="0" align="center">
						<tr>
						<td width="223" height="35"><span class="style28"> Name :</span></td>
						<td width="245"><span class="style29">
						<label>
						<input required="required" name="t1" type="text" value="<%=file%>" size="40" />
                    <input type="hidden" name="type"  value="<%=type%>"  />
						</label>
						</span></td>
						</tr>
						<tr>
						<td height="35"><span class="style28">Trapdoor :</span></td>
						<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
						</tr>
						<tr>
						<td height="35"><span class="style28">Secret Key :</span></td>
						<td><input name="t13" type="text" value="<%=skey%>" size="40" /></td>
						</tr>
						<tr>
						<td height="35"><div align="right"><span class="style29"></span></div></td>
						<td><input name="Submit2" type="submit" value="Download" /></td>
						</tr>
						</table>
						<p>
						<%
						}
					else
					{
						%>
						</p>
						<h3 >Patient Description is Attacked You Are Not Allowed To Download !!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					}
					}
				}
				else
				{
					%>
					</p>
					<h3 >Trapdoor Not Requested !!</h3>
					<p><a href="U_Main.jsp">Back</a></p>
					</p>
					<%
				}	
			}
			else
			{
				%>
				<h3>Patient Records Doesn't Exist !!</h3>
				<p><a href="U_Main.jsp">Back</a></p>
				<%
			}
		}
		if(type.equalsIgnoreCase("Document"))
		{
			String Query5 = "select * from document where fname='"+file+"'";
			ResultSet rs5 = connection.createStatement().executeQuery(Query5);
			if(rs5.next()==true)
			{	
				trapdoor=rs5.getString(4);
				skey=rs5.getString(5);
				String	owner=rs5.getString(8);
				
				
				String Query2 = "select * from document_request where user='"+user+"' and owner='"+owner+"' and fname='"+file+"'";
				ResultSet rs2 = connection.createStatement().executeQuery(Query2);
				if(rs2.next())
				{
					trap_per=rs2.getString(5);
					
					if (trap_per.equalsIgnoreCase("Requested"))
					{
						%>
						</p>
						<h3 >Trapdoor Not Generated!!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					else if (trap_per.equalsIgnoreCase("No"))
					{
						%>
						</p>
						<h3 >Trapdoor Not Requested !!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					else
					{
					String Query3 = "select * from document_backup where  downer='"+owner+"' and fname='"+file+"'";
				ResultSet rs3 = connection.createStatement().executeQuery(Query3);
				if(rs3.next())
				{
					String back_trap=rs3.getString(4);
					if(back_trap.equalsIgnoreCase(trapdoor))
					{
					
						%>
						</p>
						<table width="548" border="0" cellpadding="0" cellspacing="0" align="center">
						<tr>
						<td width="223" height="35"><span class="style28"> Name :</span></td>
						<td width="245"><span class="style29">
						<label>
						<input required="required" name="t1" type="text" value="<%=file%>" size="40" />
                    <input type="hidden" name="type"  value="<%=type%>"  />
						</label>
						</span></td>
						</tr>
						<tr>
						<td height="35"><span class="style28">Trapdoor :</span></td>
						<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
						</tr>
						<tr>
						<td height="35"><span class="style28">Secret Key :</span></td>
						<td><input name="t13" type="text" value="<%=skey%>" size="40" /></td>
						</tr>
						<tr>
						<td height="35"><div align="right"><span class="style29"></span></div></td>
						<td><input name="Submit2" type="submit" value="Download" /></td>
						</tr>
						</table>
						<p>
						<%
					}
					else
					{
						%>
						</p>
						<h3 >Document Content is Attacked You Are Not Allowed To Download !!</h3>
						<p><a href="U_Main.jsp">Back</a></p>
						</p>
						<%
					}
					}	
					}
				}
				else
				{
					%>
					</p>
					<h3 >Trapdoor Not Requested !!</h3>
					<p><a href="U_Main.jsp">Back</a></p>
					</p>
					<%
				}	
			}
			else
			{
				%>
				<h3>Document Doesn't Exist !!</h3>
				<p><a href="U_Main.jsp">Back</a></p>
				<%
			}
		}
		
				
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
              </p>
            </form>
            </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5><span class="style4"><ul>
			<li><a href="U_Main.jsp">Home</a></li><br />
			<li><a href="U_Login.jsp">Logout</a></li>
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
