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
    <script>alert('Login Success');</script>
    <%}
        if (request.getParameter("m6") != null) {%>
    <script>alert('#');</script> 

    <%}
    %>
<body>
    <style>
        .table {
	margin-bottom: 0px;
        width: 70%;
                }
        .table > tbody > tr > th {
	padding: 15px;
	border: 3px solid #e4e4e4;
}

.table tr > th {
	padding: 15px 13px;
}

tr:nth-child(1) > th {
	border-top:0px;
}

tr > th:nth-child(1){
	background-color: #ffffff;
	font-weight: 500;
	font-size: 13px;
	color: #0c0c0c;
	width: 200px;
        height: 40px;
}

tr > th:nth-child(2) {
	font-weight: 500;
	color: #ffffff;
        width: 200px;
	background: #4c9cef;
}
.table a {
	color: #ffffff;
}
        
        
    </style>
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
         <li><a href="adminhome.jsp"  >Home</a></li>
      <li><a href="fviewprofile.jsp" class="active" >View Profile</a></li>
      <li><a href="fviewcollege.jsp">View College</a></li>
      <li><a href="fviewfeedback.jsp">View Feedback</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>
    
  </div>
  
</div>
    <%    
    String user = session.getAttribute("username").toString();
    ResultSet rs=null;
    String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
   
   try{    
        
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    rs=st.executeQuery("select * from fresher where username = '"+user+"'");
    
    if ( rs.next() )
					   		{
								
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
                                                                s7=rs.getString(8);
                                                               
       
   
    %>
    <br>
    <center><h1><%=user%>'s Profile</h1></center>  
    <br>
        <center>
        <table-responsive>    
        <table>
        <img src="img/<%out.println(s7);%>" width="100" height="100"><br>
	<tr>
	<th>Name</th>
	<th><%out.println(s2);%></th>
	</tr>
        <tr>
	<th>Email</th>
	<th><%out.println(s3);%></th>
	</tr>
	<tr>
	<th>D.O.B</th>
        <th><%out.println(s4);%></th>
        </tr>
	<tr>
	<th>Address</th>
	<th><%out.println(s5);%></th>
	</tr>
	<tr>
	<th>Contact</th>
	<th><%out.println(s6);%></th>
	</tr>
        
	</table>
        </center>    
            
          <%
					
						}
						con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>   
            
            
            
            
    <br>
<div class="footer">
  <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
</div>
</body>
</html>
