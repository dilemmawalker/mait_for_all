<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
        <%
        String cname = request.getParameter("cname"); 
        session.setAttribute("cname",cname);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        try{

        String user=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from student where collegename = '"+cname+"' and username= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
        user = rs.getString(2);
        session.setAttribute("username",username);
        System.out.println("User:"+user);

        response.sendRedirect("studenthome.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("student.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in emplogact"+e.getMessage());
        }
        %>