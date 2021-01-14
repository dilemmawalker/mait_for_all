<%@page import="databasecon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
       <li><a href="studenthome.jsp">Home</a></li>
      <li><a href="sviewprofile.jsp" >View Profile</a></li>      
      <li><a href="sviewcollege.jsp" class="active">View College</a></li>
      <li><a href="sviewplacements.jsp">View Placements</a></li>
      <li><a href="sfeedback.jsp">Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>    <br>    <br>    <br>
    
    <div class="header-button"><a href="#">View Colleges</a> </div>
    <br>
  </div>
  <center>
  
   <%
                String cname = session.getAttribute("cname").toString();
                Connection con = Dbconnection.getConnection();
                PreparedStatement pst=con.prepareStatement("select * from college where collegename = '"+cname+"' ");
        
        
                ResultSet rs=pst.executeQuery();
              
                %>
              	<center>
                    
                    
                  
                    <table width="80%" border="2">
                        <tr style="background-color: #b7ab25">
                            <th><font color="black">Id</font></th>
                            <th><font color="black">Image</font></th>
                            <th><font color="black">College</font></th>
                            <th><font color="black">Link</font></th>
                            <th><font color="black">Address</font></th>
                             
                        </tr> 
                      <%
                      while(rs.next()){
                      %>
                        
                      <tr style="color:black">
                          <th><%=rs.getInt("id")%></th>
                          <th><img src="img/<%=rs.getString("image")%>" height="100" width="100"></th>
                          <th><%=rs.getString("collegename")%></th>
                          <th><a target="_blank" href="<%=rs.getString("link")%>"><%=rs.getString("link")%></a></th>
                          <th><%=rs.getString("address")%></th>
                          
                          
                      </tr>
                      <%}%>
                      
                    </table>
                    
                    
         </center>        
      
      
  
</div>
    <br><br><br>    <br>

<div class="footer">
 <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
</div>
</body>
</html>
