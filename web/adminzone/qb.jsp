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
                  
                <div class="col-sm-12" style="min-height:600px;background-color:lightcoral">
                    <h2 style="color:blue;text-align:center;">Question Bank Management</h2> 
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="qb"/>
                        <table class="table table-bordered" style="margin:auto;width: 60%;">
                            <tr>
                                <td style="background-color: lightskyblue">Select Course</td>
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
                                <td>Enter Question</td>
                                <td>
                                    <textarea name="question" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Option 1</td>
                                <td>
                            <textarea name="opt1" class="form-control"></textarea>
                               
                                </td>
                            </tr>
                            <tr>
                                <td>Option 2</td>
                                <td>
                            <textarea name="opt2" class="form-control"></textarea>
                               
                                </td>
                            </tr>
                            <tr>
                                <td>Option 3</td>
                                <td>
                            <textarea name="opt3" class="form-control"></textarea>
                               
                                </td>
                            </tr>
                            <tr>
                                <td>Option 4</td>
                                <td>
                            <textarea name="opt4" class="form-control"></textarea>
                               
                                </td>
                            </tr>
                            <tr>
                                <td>Correct Option</td>
                                <td>
                            <textarea name="correct" class="form-control"></textarea>
                               
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="viewqb.jsp">
                                        <button type="button" class="btn btn-success">View Questions</button>
                                    </a>   
                                </td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
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
