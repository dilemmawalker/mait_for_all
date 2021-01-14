<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>College Feedback</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('College Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('College  Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
      <li><a href="adminhome.jsp">Home</a></li>
      <li><a href="addcollege.jsp" class="active"  >Add College</a></li>
      <li><a href="addplacements.jsp">Add Placements</a></li>
      <li><a href="aviewcollege.jsp">View College</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Add College</a> </div>
    <br>
  </div>
  <center>
  
         <form name="myform" action="addcollegeact.jsp" method="post"  >
         <table border="0" >
          
            
              <tr>              
              <th><strong><font size="3" color="black">College Name:</font></strong></th>
              <th style="color:green"><input name="cname"  placeholder=CollegeName required style="height:30px; width:200px"> </input></th>
              </tr>
              
        
              <tr>           
              <th><strong><font size="3" color="black">Link:</font></strong></th>
              <th><input type="text" name="link" placeholder=Link  style="height:30px; width:200px"> </input></th>
              </tr>
        
        
              <tr>
              <th><strong><font size="3" color="black">Address </font></strong></th>
              <th><input type="text" name="address" id="ad" placeholder= "Address" required style="height:30px; width:200px"></input></th> 
              </tr>
             
             
             <tr>
             <th><strong><font size="3" color="black">Image </font></strong></th>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <th><input type="file" name="image"  required></input></th> 
             </tr>
        
             <tr></tr>
             <tr></tr>
             <tr></tr>
             <tr></tr>
               
              
             <tr>
             <td><input type="submit" value="Upload" style="height:30px; width:70px" />                
             <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
             </tr>
              
            </table>
            </form>   
      
      
  </center>
  
</div>
    <br><br><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
</div>
</body>
</html>
