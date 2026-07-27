<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 3:06:37 PM
    Author     : oo7
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="dbpack.DbManager"%>
<%
   if(session.getAttribute("adminid")==null){
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
                <div class="col-sm-12" style="min-height:600px;background-color:pink;">
                    <h2 style="text-align:center;color: blue;">View Question</h2>
                    <table class=" table table-bordered">
                        <tr>
                            <th>Id</th>
                            <th>Course Name</th>
                            <th>Question </th>
                            <th> Option 1</th>
                            <th> Option 2</th>
                        <th>Option3 </th>
                        <th>Option 4</th>
                        <th>Correct Answer </th>
                        <th>Delete </th>
                        </tr>
                        <%
                          DbManager dm=new DbManager();
                        ResultSet rs=dm.select("select * from qb");
                        while(rs.next())
                        {
                       %>
                  
                  <tr>
                      <td><%=rs.getString("qid")%></td>
                      <td><%=rs.getString("coursename")%></td>
                      <td><%=rs.getString("question")%></td>
                      <td><%=rs.getString("opt1")%></td>
                      <td><%=rs.getString("opt2")%></td>
                      <td><%=rs.getString("opt3")%></td>
                      <td><%=rs.getString("opt4")%></td>
                      <td><%=rs.getString("correct")%></td>
                      <td>
                          <a href="delqb.jsp?qid=<%=rs.getString("qid")%>">
                              <button class="btn btn-danger">Delete</button>
                          </a>
                      </td>
                      
                  </tr>       
                      <%}%>  
                    </table>
                </div>
                    
                
                <div class="col-sm-6" style="min-height:80px;background-color:blue;color:white;font-size:30px;text-align:center;line-height: 80px;">
                    copyright &copy; To Nalanda Open University
                </div>
                <div class="col-sm-6" style="min-height:80px;background-color:aqua;color:white;font-size:30px;text-align:center;line-height: 80px;">
                    Developed By :- Sunita Jaiswal
                </div>
                </div>
                
    </body>
</html>

<%}%>
