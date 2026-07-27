<%@page import="dbpack.DbManager"%>
<%
  String qid=request.getParameter("qid");
  DbManager dm=new DbManager();
  String query="delete from qb where qid='"+qid+"'";
  if(dm.insertUpdateDelete(query)==true)
  {
     out.print("<script>alert('question is deleted');window.location.href='qb.jsp';</script>");
      
  }
  else
  {
   out.print("<script>alert('question is deleted');window.location.href='qb.jsp';</script>");
      
  }
 %>