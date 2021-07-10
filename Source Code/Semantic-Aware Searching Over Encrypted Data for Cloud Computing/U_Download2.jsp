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
.style16 {color: #3f3f3f}
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>
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
            <p>&nbsp;</p>
            <p align="justify"><span class="infopost">
              <%
		  	
			try 
			{
		  		String file = request.getParameter("t1");
				String trapdoor=request.getParameter("t12");
				String sk=request.getParameter("t13");
		String type = request.getParameter("type");
				String ct="",sym="";
				String user=(String) application.getAttribute("uname");
				
				
				if(type.equalsIgnoreCase("Patient"))
				{
					String strQuery2 = "select * from patient_details where patient_name='"+file+"' and  desc_trap='"+trapdoor+"'";
					ResultSet rs2 = connection.createStatement().executeQuery(strQuery2);
					if(rs2.next()==true)
					{
						ct=rs2.getString(11);
						sym=rs2.getString(13);

							if(sym.equalsIgnoreCase(sk))
							{
								String rank=rs2.getString(16);
								
								int updaterank = Integer.parseInt(rank)+1;
								String strQuer = "update patient_details set des_rank='"+updaterank+"' where patient_name='"+file+"'";
								connection.createStatement().executeUpdate(strQuer);
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
								Date now = new Date();
			
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;	
								
								
								String Query2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','Download','"+dt+"')";
								connection.createStatement().executeUpdate(Query2);
															
								
								%>
								</span> </p>
								<h3 align="center" class="infopost style16">File Contents</h3>
								<div align="center">
								<textarea name="text" id="textarea" cols="45" rows="17"><%=ct%></textarea>
								<br/>
								<br/>
								<td><button onclick="saveTextAsFile()">Download</button>
								<p align="right"><a href="U_Main.jsp">Back</a></p></td>
								</div>
								</label>
								<%	
							}
							else
							{
							
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
								Date now = new Date();
				
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
						
								String str="SecretKey Missmatch";
								
								
								String strQuer1 = "insert into attacker(user,fname,att_key,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str+"')";
								connection.createStatement().executeUpdate(strQuer1);
									%>
									<h3 >Secret Key  Mismatch !!</h3>
									<p><a href="U_Download.jsp">Back</a></p>
									<%
							}
					}
					else
					{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
								Date now = new Date();
				
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
						
								String str="Trapdoor Missmatch";
								
								
								String strQuer1 = "insert into attacker(user,fname,att_key,dt,attacktype) values('"+user+"','"+file+"','"+trapdoor+"','"+dt+"','"+str+"')";
								connection.createStatement().executeUpdate(strQuer1);
					
								%>
								</p>
								<h3>Trapdoor Mismatch !!</h3>
								</p>
								<p><a href="U_Download.jsp">Back</a> </p>
								<p>
								<%
					}
		
		}
		if(type.equalsIgnoreCase("Document"))
		{
		
					String strQuery2 = "select * from document where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
					ResultSet rs2 = connection.createStatement().executeQuery(strQuery2);
					if(rs2.next()==true)
					{
						ct=rs2.getString(3);
						sym=rs2.getString(5);

							if(sym.equalsIgnoreCase(sk))
							{
								String rank=rs2.getString(6);
								
								int updaterank = Integer.parseInt(rank)+1;
								String strQuer = "update document set rank='"+updaterank+"' where fname='"+file+"'";
								connection.createStatement().executeUpdate(strQuer);
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			
								Date now = new Date();
			
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;	
								
									String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(ct.getBytes()));
								
								
								String Query2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','Download','"+dt+"')";
								connection.createStatement().executeUpdate(Query2);
															
								
								%>
								</span> </p>
								<h3 align="center" class="infopost style16">File Contents</h3>
								<div align="center">
								<textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
								<br/>
								<br/>
								<td><button onclick="saveTextAsFile()">Download</button>
								<p align="right"><a href="U_Main.jsp">Back</a></p></td>
								</div>
								</label>
								<%	
							}
							else
							{
							
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
								Date now = new Date();
				
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
						
								String str="SecretKey Missmatch";
								
								
								String strQuer1 = "insert into attacker(user,fname,att_key,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str+"')";
								connection.createStatement().executeUpdate(strQuer1);
									%>
									<h3 >Secret Key  Mismatch !!</h3>
									<p><a href="U_Download.jsp">Back</a></p>
									<%
							}
					}
					else
					{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
								Date now = new Date();
				
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
						
								String str="Trapdoor Missmatch";
								
								
								String strQuer1 = "insert into attacker(user,fname,att_key,dt,attacktype) values('"+user+"','"+file+"','"+trapdoor+"','"+dt+"','"+str+"')";
								connection.createStatement().executeUpdate(strQuer1);
					
								%>
								</p>
								<h3>Trapdoor Mismatch !!</h3>
								</p>
								<p><a href="U_Download.jsp">Back</a> </p>
								<p>
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
            <p>&nbsp;</p>
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
