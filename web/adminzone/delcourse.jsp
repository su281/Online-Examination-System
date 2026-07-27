<%@page import="dbpack.DbManager"%>
<%
  String id=request.getParameter("id");
  DbManager dm=new DbManager();
  String query="delete from course where id='"+id+"'";
  if(dm.insertUpdateDelete(query)==true)
  {
      out.print("<script>alert('course is deleted');window.location.href='course.jsp';</script>");
  }
  else
  {
    out.print("<script>alert('course is  not deleted');window.location.href='course.jsp';</script>");  
  }
    
  %>