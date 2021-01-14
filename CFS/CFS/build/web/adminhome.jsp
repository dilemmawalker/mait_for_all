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
<div class="wrapper">
  <div class="logo">College Feedback System</div>
  <div class="menu">
    <ul>
       <li><a href="adminhome.jsp" class="active" >Home</a></li>
      <li><a href="addcollege.jsp" >Add College</a></li>
      <li><a href="addplacements.jsp">Add Placements</a></li>
      <li><a href="aviewcollege.jsp">View College</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
  <div class="header">
      <br>
    
  </div>
  <div class="banner-container">
    <div class="banner-top"></div>
    <div class="banner-middle"> <img src="img/college.jpg" alt="themedemic" /> </div>
    <div class="banner-bottom"></div>
  </div>
</div>
    <center><h1>Welcome Admin</h1></center>  

<div class="footer">
  <div class="copy-rights">Developed by <a href="http://1000projects.org/">1000 Projects</a></div>
</div>
</body>
</html>
