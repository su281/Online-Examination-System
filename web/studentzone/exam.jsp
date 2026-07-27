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
                <div class="col-sm-12" style="min-height:600px; background-color:pink;">
                    <h2 style="color:blue;text-align:center">Examination Module</h2>
                    <form class="form-group"  method="post" action="studentcontroller.jsp">
                        <input type="hidden" name="page" value="exam"/>
                    
                        <table class=" table table-bordered" style="width:60%; margin:auto;">
                            <tr>
                                <td>Select Course</td>
                                <td>
                                    <select name="coursename" class="form-control">
                                <%
                                    DbManager dm=new DbManager();
                                    ResultSet rs=dm.select("select * from course");
                                    while(rs.next())
                                    {
                                   %>     
                                   <option><%=rs.getString("coursename")%></option>
                                           
                                   
                                   
                             <% } %>
                               </select>
                            </td>
                            </tr> 
                            <tr>
                                <td colspan="2">
                                    <ul>
                                        <li> All Question are Compulsory</li>
                                        <li> Each question carry 1 marks</li>
                                        <li> No negative marking</li>
                                    </ul>  
                                </td>
                             
                                
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="btn btn-success">Start</button>
                                    
                                </td>
                            </tr>
                        
                    </table>
                               </form>
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
