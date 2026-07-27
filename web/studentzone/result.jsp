<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 3:06:37 PM
    Author     : oo7
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
   if(session.getAttribute("rollno")==null)
   {
       response.sendRedirect("../login.jsp");
       
   }
   else
   {
       
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Nalanda  Open University</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/> 
        <script src="../js/bootstrap.bundle.js"></script>
        <style>
            .nav-item .nav-link:hover
            {
                background-color: red;
                color:gray;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            
            <div class="row">
                
                <div class="col-sm-12" style="min-height: 600px; background-color:pink">
                    <h2 style="text-align:center;color:blue">View Result</h2>
                    <table class="table table-bordered" style="width:80%;margin:auto">
                           <tr>
                            
                            <th>Id</th>
                            <th>Roll No</th>
                            <th>Course Name</th>
                            <th>Total Marks</th>
                            <th>Obtain Marks</th>
                            <th> Exam Date</th>
                            
                            
                        </tr>
                        <%
       String rollno=session.getAttribute("rollno").toString();
       String query="select  * from result where rollno='"+rollno+"'";
       DbManager dm=new DbManager();
       ResultSet rs=dm.select(query);
       while(rs.next())
       {
                      %>
                      <tr>
                          <td><%=rs.getString("id")%></td>
                          <td><%=rs.getString("rollno")%></td>
                          <td><%=rs.getString("coursename")%></td>
                          <td><%=rs.getString("totalmark")%></td>
                          <td><%=rs.getString("getmark")%></td>
                          <td><%=rs.getString("examdate")%></td>
                      </tr>
                      
                      <% } %>
                        
                    </table>
                </div>
              
       
                <div class="col-sm-6" style="min-height:80px;background-color:blue;color:white; float:left;font-size:30px;text-align:center;line-height: 80px;">
                    copyright &copy; To Nalanda Open University
                </div>
                <div class="col-sm-6" style="min-height:80px;background-color:aqua;color:white; float: left;font-size:30px;text-align:center;line-height: 80px;">
                    Developed By :- Sunita Jaiswal
                </div>
        
            </div>
    </body>
</html>

<%}%>
