<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
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
    <script>alert('Feedback Posted Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Feedback Posted  Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
      <li><a href="studenthome.jsp">Home</a></li>
      <li><a href="sviewprofile.jsp">View Profile</a></li>
      <li><a href="sviewcollege.jsp">View College</a></li>
      <li><a href="sviewplacements.jsp">View Placements</a></li>
      <li><a href="sfeedback.jsp" class="active" >Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br><br><br><br>
       <%
        
   String user = session.getAttribute("username").toString();
   String cname = session.getAttribute("cname").toString();

       %>
    <div class="header-button"><a href="#">Feedback Form</a> </div>
    <br>
  </div>
  <center>
      
           <form name="myform" action="sfeebackact.jsp" method="post" >
           <table border="0" >
               
           <tr>
           <td>
           <td><strong><font size="3" color="black">College Name:</font></strong></td>
           <td><input type="text" readonly name="cname" value="<%=cname%>"required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>    
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">Studies:</font></strong></td>
           <td>
           <select name="studies" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Sports:</font></strong></td>
           <td>
           <select name="sports" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Placements:</font></strong></td>
           <td>
           <select name="placements" required style="width:100%">
           <option value="">Select</option>
           <option value="1">1</option>
           <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
           <option value="5">5</option>
           </select>             
           </td>
           </td>
           </tr>
        
           
        
           <tr>
           <td>
           <td><strong><font size="3" color="black">Comment: </font></strong></td>
           <td><input type="text" name="cmnt"  placeholder= Comment required style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
           
          
               
          
            
           <tr>
           <td>
           <br><br><br>    
           <td><input type="submit" value="Submit" style="height:30px; width:70px" />
           <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
           </td>
           </tr>
           </table>
           </form>    
      
      
    </center>
  
    </div>
  

    <div class="footer">
    <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
    </div>
    </body>
    </html>
