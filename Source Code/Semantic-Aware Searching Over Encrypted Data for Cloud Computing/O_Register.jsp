<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style2 {
	font-size: 24px;
	font-family: Geneva, Arial, Helvetica;
	color: #FFFFFF;
}
.style4 {font-family: Geneva, Arial, Helvetica}
.style7 {color: #FFFF00; font-weight: bold; }
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
          <li><a href="index.html">HOME</a></li>
          <li><a href="U_Login.jsp">USER</a></li>
          <li><a href="O_Login.jsp" class="active">OWNER </a></li>
          <li><a href="T_Login.jsp">TRUSTED AUTHORITY </a></li>
          <li><a href="C_Login.jsp">CLOUD</a></li>
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
            <h2>Owner Register </h2>
            <p>&nbsp;</p>
            <form action="O_RegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
              <label for="name"> </label>
              <table width="590" height="524" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="259" bgcolor="#FF0000" scope="row"><div align="left" class="style7">Owner Name (required) : </div></td>
                  <td width="343"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" ><div align="left" class="style7">Password (required) : </div></td>
                  <td><input type="password" id="password" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><div align="left" class="style7">Email Address (required) : </div></td>
                  <td><input id="email" name="email" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><div align="left" class="style7">Mobile Number (required) : </div></td>
                  <td><input id="mobile" name="mobile" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><span class="style7">
                    <label for="label"> </label>
                      <label for="label">
                    </span>
                    <div align="left" class="style7">Your Address : </div>
                    <span class="style7">
                    </label>
                  </span></td>
                  <td><textarea name="address" cols="45" id="address"></textarea></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><span class="style7">
                    <label for="label"> </label>
                      <label for="label">
                    </span>
                    <div align="left" class="style7">Date of Birth (required) : </div>
                    <span class="style7">
                    </label>
                  </span></td>
                  <td><input id="dob" name="dob" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><div align="left" class="style7">Select Gender (required) : </div></td>
                  <td><select id="s1" name="gender" class="text">
                      <option>-Select-</option>
                      <option>Male</option>
                      <option>Female</option>
                  </select></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><span class="style7">
                    <label for="label"> </label>
                      <label for="label">
                    </span>
                    <div align="left" class="style7">Enter Pincode (required) : </div>
                    <span class="style7">
                    </label>
                  </span></td>
                  <td><input id="pincode" name="pincode" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><span class="style7">
                    <label for="location"> </label>
                      <label for="location">
                    </span>
                    <div align="left" class="style7">Enter Location (required) : </div>
                    <span class="style7">
                    </label>
                  </span></td>
                  <td><input id="loc" name="location" class="text" /></td>
                </tr>
                <tr>
                  <td bgcolor="#FF0000" scope="row"><span class="style7">
                    <label for="label"> </label>
                      <label for="label">
                    </span>
                    <div align="left" class="style7">Select Profile Picture (required) : </div>
                    <span class="style7">
                    </label>
                  </span></td>
                  <td><input type="file" id="pic" name="pic" class="text" /></td>
                </tr>
                <tr>
                  <td height="79" scope="row">&nbsp;</td>
                  <td><input name="submit" type="submit" value="REGISTER" /></td>
                </tr>
              </table>
              <p align="right"><a href="O_Login.jsp">Back</a></p>
            </form>
          </div>
          <div class="blog">
            <h2>Menu</h2>
            <h5><span class="style4">
			<ul>
			<li><a href="index.html">Home</a></li><br />
			<li><a href="U_Login.jsp">User</a></li><br />
			<li><a href="C_Login.jsp">Cloud</a></li><br />
			<li><a href="O_Login.jsp">Owner</a></li><br />
            <li><a href="T_Login.jsp">Trusted Authority </a></li>
			</ul>
            </span>            </h5>
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
