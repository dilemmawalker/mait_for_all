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
    <script>alert('Placement Added Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Placement Adding Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
      <li><a href="adminhome.jsp">Home</a></li>
      <li><a href="addcollege.jsp" >Add College</a></li>
      <li><a href="addplacements.jsp"  class="active" >Add Placements</a></li>
      <li><a href="aviewcollege.jsp">View College</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br><br><br><br>
       <%
                
ResultSet rs=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs=st.executeQuery("select * from college");
}catch(Exception e){
    e.printStackTrace();
    }
%>
    <div class="header-button"><a href="#">Add Placements</a> </div>
    <br>
  </div>
  <center>
      
           <form name="myform" action="addplacementsact.jsp" method="post" >
           <table border="0" >
               
           <tr>
           <td>    
           <td><strong><font size="3" color="black">Select College:</font></strong></td> 
           <td>
           <select name="cname" required style="width:100%">
           <option value="">Select</option>
           <%
           while(rs.next()){
           %>
           <option value="<%=rs.getString("collegename")%>"><%=rs.getString("collegename")%></option>

           <%}%>
           </select>
           </td>
           </td>
           </tr>    
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">Company Name:</font></strong></td>
           <td><input type="text" name="company" id="username1" placeholder=Company required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
        
           <tr>
           <td>
           <td><strong><font size="3" color="black">About :</font></strong></td>
           <td><input type="text" name="about" id="password1" placeholder= About Company required style="height:30px; width:200px"></input></td> 
           </td>
           </tr>
          
           <tr>
           <td>
           <td><strong><font size="3" color="black">Date: </font></strong></td>
           <td><input type="date" name="date"  style="height:30px; width:200px"></input></td> 
           </td>
           </tr> 
            
           
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">Contact No: </font></strong></td>
           <td><input type="text" name="cno" id="txtphoneno" onkeypress="return isNumber(event)" placeholder= MobileNo style="height:30px; width:200px"></input></td> 
           </td>
           </tr><tr><tr>
               
           
            
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
