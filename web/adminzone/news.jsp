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
     <div class="col-sm-12" style="min-height:600px;background-color:lightcoral;">
     <h2 style="color: blue;text-align:center;">News Management</h2>
     <form class="form-group" method="post" action="admincontroller.jsp">
      <input type="hidden" name="page" value="news"/>
       <table class="table table-bordered" style="width:70%;margin:0 auto;">
     <tr>
   <td style="background-color:lightcyan">Enter News</td>
     <td style="background-color:lightcyan">
  <textarea name="newstext" class="form-control"></textarea>
       </td>
       </tr>
        <tr>
      <td style="background-color:lightskyblue"></td>
      <td style="background-color:lightskyblue">
    <button type="submit" class="btn btn-primary">Add News</button>
                                        
                                    
    </td>
      </tr>
                            
         </table>  
         </form>
        <br/>
   <table class="table table-bordered" style="width:80%;margin: auto">
    <tr>
    <th>Id</th>
   <th>News Text</th>
     <th>Posted Date</th>
     <th>Delete</th>
        </tr>
        <%
       DbManager dm=new DbManager();
       ResultSet rs=dm.select("select * from news");
       while(rs.next())
       {
        %>   
        <tr>
            <td><%=rs.getString("id")%></td>
            <td><%=rs.getString("newstext")%></td>
            <td><%=rs.getString("posteddate")%></td>
            <td>
                <a href="delnews.jsp?id=<%=rs.getString("id")%>">
                    <button class=" btn btn-danger">Delete</button> 
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
