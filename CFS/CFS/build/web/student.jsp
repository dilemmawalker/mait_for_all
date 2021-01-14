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
    <script>alert('Registration Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed');</script> 

    <%}
    %>
<body>
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
      <li><a href="index.html" >Home</a></li>
      <li><a href="admin.jsp">Admin</a></li>
      <li><a href="student.jsp" class="active">Student</a></li>
      <li><a href="fresher.jsp">Fresher</a></li>
      <li><a href="about.jsp">About Us</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">Student Lgoin</a> </div>
    <br>
  </div>
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
  <center>
    
    <form action="studentact.jsp" method="post" id="leavereply">
        <table border="0" >
        <tr>
           <td>    
           <td><strong><font size="3" color="black">Select College:</font></strong></td> 
           <td>
           <select name="cname"required style="width:100%">
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
           <td><strong><font size="3" color="black">User Name:</font></strong></td>
           <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
           
           <tr>
           <td>
           <td><strong><font size="3" color="black">password:</font></strong></td>
           <td><input type="text" name="password" id="username1" placeholder=password required style="height:30px; width:200px"> </input></td>
           </td>
           </tr>
           <tr>
           <td>
           <br><br><br>    
           <td><input type="submit" value="Register" style="height:30px; width:70px" />
           <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
           </td>
           </tr>
           </table>
           </form></center>
  
</div>
   <br><br>
            <center>    <a href="studentreg.jsp"><font size="4">Click Here for Registration</a></center><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
</div>
</body>
</html>
