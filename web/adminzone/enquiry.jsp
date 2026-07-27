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
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12" style="min-height:600px;background-color:lightskyblue;">
                    <h2 style="text-align:center;color: blue;"> Enquiry Management</h2>
                    <table class="table table-bordered" style="margin:auto;width:90%;">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Enquiry Text</th>
                            <th>Enquiry Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                  DbManager dm=new DbManager();
                  ResultSet rs=dm.select("select * from enquiry");
                  while(rs.next())
                  {
            %>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("contactno")%></td>
                <td><%=rs.getString("emailaddress")%></td>
                <td><%=rs.getString("enquirytext")%></td>
                <td><%=rs.getString("enquirydate")%></td>
                <td>
                    <a href="delenq.jsp?id=<%=rs.getString("id")%>">
                        <button class="btn btn-danger"> Delete </button>
                       
                        
                    </a>
                </td>
            </tr>
            
            <% } %>
                        
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
