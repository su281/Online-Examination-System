<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 3:06:37 PM
    Author     : oo7
--%>

<%@page import="dbpack.Exam"%>
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
                    <h2 style="color:blue; text-align: center;">Attempt Examination</h2> 
                    <form class="form-group" method="post" action="calc.jsp">
                        <input type="hidden" name="page" value="exam"/>
                        <table class="table table-border" style="width:70%; margin:auto;">
                            <%
                          DbManager dm=new DbManager();
                          ResultSet rs=dm.select("select count(*)  as tcount from qb");
                          rs.next();
                          Exam.totalques=rs.getInt("tcount");
                          out.print(Exam.totalques);
                          String query="select * from qb where qid='"+Exam.count+"'";
                          rs=dm.select(query);
                          if(rs.next())
                          {
                          %>
                          <tr>
                              <td><%=rs.getInt("qid")%></td>
                              <td><%=rs.getString("question")%></td>
                              
                          </tr>
                          <tr>
                              <td>
                                  <input type="radio" required  name="option"  value="<%=rs.getString("opt1")%>"/>
                              </td>
                              <td><%=rs.getString("opt1")%></td>
                          </tr>
                          <tr>
                              <td>
                                  <input type="radio" required  name="option"  value="<%=rs.getString("opt2")%>"/>
                              </td>
                              <td><%=rs.getString("opt2")%></td>
                          </tr>
                          <tr>
                              <td>
                                  <input type="radio" required name="option" value="<%=rs.getString("opt3")%>"/>
                              </td>
                              <td><%=rs.getString("opt3")%></td>
                          </tr>
                          <tr>
                              <td>
                                  <input type="radio" required name="option" value="<%=rs.getString("opt4")%>"/>
                              </td>
                              <td><%=rs.getString("opt4")%></td>
                          </tr>
                          <tr>
                              <td colspan="2">
                                  <button type="submit" class="btn btn-success">Start</button>
                                  
                              </td>
                          </tr>
                           <% } %>
                           
                           
                        </table>   
                    </form>
                    
                </div>
                    
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
