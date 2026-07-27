<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 3:06:37 PM
    Author     : oo7
--%>

<%@page import="java.sql.ResultSet"%>
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
                <div class="col-sm-12" style="min-height:600px;background-color:lightsalmon;">
                    <h2 style="color:blue;text-align: center;">Course Management</h2> 
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden"  name="page"  value="course"/>       
                        <table class="table table-bordered" style="width: 50%;margin: 0 auto;">
                            <tr>
                                <td style="background-color:lightcoral">Enter Course Name</td>
                                <td style="background-color:lightcoral">
                                    <input type="text" name="coursename" class="form-control" required/> 
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightseagreen"></td>
                                <td style="background-color:lightseagreen">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                            
                            
                        </table>
                    </form>
                    <br/>
                    <table class="table table-bordered" style=" width:70%;margin:auto;">
                    <tr>
                        <th>Id</th>
                        <th>Course Name</th>
                        <th>Delete</th>
                          
                        
                    </tr>
                    <%
               DbManager dm=new DbManager();
               ResultSet rs=dm.select("select * from course");
               while(rs.next())
               {
                   %>
                   <tr>
                       <td><%=rs.getString("id")%></td>
                       <td><%=rs.getString("coursename")%></td>
                       <td>
                           <a href="delcourse.jsp?id=<%=rs.getString("id")%>">
                               <button class="btn btn-danger">Delete</button>
                           </a>
                       </td>
                   </tr>
       
                  <% }%>
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
