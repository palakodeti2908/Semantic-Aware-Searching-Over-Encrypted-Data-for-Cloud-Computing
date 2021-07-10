<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<%@page import ="java.util.*"%>
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
.style21 {font-size: 14px}
.style22 {color: #FFFF00}
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
            <h2>View Documents &amp; Patient Details </h2>
            <p>&nbsp;</p>
            <p><strong>Documents :            </strong></p>
            <p>&nbsp;            </p>
            <table width="494" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
              <%	  
			  
			  
	String s2="",s3="",s6="";
	int i=0,j=0,k=0;
	String doname=(String)application.getAttribute("doname");
try 
	{		
		
				%>
              <tr>
                <td width="39" height="30" bgcolor="#FF0000"><div align="center" class="style21 style22"><strong> ID </strong></div></td>
                <td width="162" bgcolor="#FF0000"><div align="center" class="style21 style22"><strong>DOCUMENT NAME </strong></div></td>
                <td width="154" bgcolor="#FF0000"><div align="center" class="style21 style22"><strong>DATA OWNER </strong></div></td>
                <td width="129" bgcolor="#FF0000"><div align="center" class="style21 style22"><strong>DOMAIN</strong></div></td>
              </tr>
              <%
				
				
				String query="Select *from document  "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(9);
					s6=rs.getString(8);
					
				
					
					%>
              <tr>
                <td height="28"><div align="center"><%=i%></div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s6%></div></td>
                <td><div align="center"><%=s3%></div></td>
              </tr>
              <%
				}

%>
            </table>
            <p align="justify">&nbsp;</p>
            <p align="justify">&nbsp;</p>
            <p align="justify"><strong>Patient Details :</strong></p>
            <p align="justify">&nbsp;</p>
            <table width="494" height="75" border="1" align="center" cellpadding="0" cellspacing="0" style="border-collapse:collapse">
              <tr height="30">
                <th width="34" bgcolor="#FF0000"  scope="col"><div align="center" class="style22">
                    <div align="center">ID</div>
                </div></th>
                <th width="169" bgcolor="#FF0000" scope="col"><div align="center" class="style22">
                    <div align="center">PATIENT NAME </div>
                </div></th>
                <th width="160" bgcolor="#FF0000" scope="col"><div align="center" class="style22">
                    <div align="center"><span class="style21 "><strong>DATA OWNER </strong></span></div>
                </div></th>
                <th width="121" bgcolor="#FF0000" scope="col"><div align="center" class="style22">
                    <div align="center">DISEASE</div>
                </div></th>
              </tr>
              <%	  
			  
			  
	String s1="",s4="",s5="",s7="",s8="",s9="",s10,s11,s12,s13;

      		String query2="Select *from patient_details "; 
            Statement st2=connection.createStatement();
            ResultSet rs2=st2.executeQuery(query2);
			while ( rs2.next() )
			{
					i=rs2.getInt(1);
					s1=rs2.getString(2);
					s10=rs2.getString(3);
					s4=rs2.getString(4);
					s5=rs2.getString(5);
					s11=rs2.getString(6);
					s7=rs2.getString(7);
					s8=rs2.getString(8);
					s9=rs2.getString(9);
					s11=rs2.getString(15);

		
						%>
              <tr height="28">
                <td><div align="center"><%=i%></div></td>
                <td><div align="center"><%=s1%></div></td>
                <td><div align="center"><%=s11%></div></td>
                <td><div align="center"><%=s4%></div></td>
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
            <p align="right"><a href="U_Main.jsp">Back</a></p>
            <p align="justify">&nbsp;</p>
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
