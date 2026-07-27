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
                <div class="col-sm-12" style="min-height:600px;background-color:pink;">
                    <h2 style="color:blue;text-align: center;">Student Profile</h2>
                    <table class="table table-bordered" style="width:60%;margin:auto;">
                        <%
       String rollno=session.getAttribute("rollno").toString();
       DbManager  dm=new DbManager();
       ResultSet rs=dm.select("select * from studentinfo where rollno='"+rollno+"'");
       if(rs.next())
       {
           %>
           
           <tr>
               <td>Roll No</td>
               <td><%=rs.getString("rollno")%></td>
               
           </tr>
           <tr>
               <td>Name</td>
               <td><%=rs.getString("name")%></td>
           </tr>
           <tr>
               <td>Father Name</td>
               <td><%=rs.getString("fname")%></td>
           </tr>
           <tr>
               <td> Mother Name</td>
               <td><%=rs.getString("mname")%></td>
           </tr>
           <tr>
               <td>Gender</td>
               <td><%=rs.getString("gender")%></td>
           </tr>
           <tr>
               <td>Address</td>
               <td><%=rs.getString("address")%></td>
           </tr>
           <tr>
               <td>Program</td>
               <td><%=rs.getString("program")%></td>
           </tr>
           <tr>
               <td>Branch</td>
               <td><%=rs.getString("branch")%></td>
           </tr>
           <tr>
               <td>Year</td>
               <td><%=rs.getString("year")%></td>
           </tr>
           <tr>
               <td>Contact No</td>
               <td><%=rs.getString("contactno")%></td>
           </tr>
           <tr>
               <td>Email Address</td>
               <td><%=rs.getString("emailaddress")%></td>
           </tr>
           <tr>
               <td>Reg. Date</td>
               <td><%=rs.getString("regdate")%></td>
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
                    
<footer id="dk-footer" class="dk-footer">
<div class="container-fluid">
<div class="row"style="background-color: brown; color:white; margin-top: 5px;">
<div class="col-lg-3 footer-about text-center" >
<a href="index.php" class="footer-img">
<img src="images/logo.jpeg" style="border-radius: 60%"  class="img-fluid">
</a>
    <p class="text-justify">
Nalanda Open University is a State Open University duly established under the Act of Bihar Government and is also recognized by Distance Education Council, IGNOU, Maidan Garhi, New Delhi.
</p>
<ul class="my-footer-link ps-0 text-center" style="list-style:none;">
<li style="float:left;">
<a href="#">
<i class="fa fa-facebook"><img src="https://cdn-icons-png.flaticon.com/128/4401/4401395.png" data-src="https://cdn-icons-png.flaticon.com/128/4401/4401395.png" alt="Facebook " title="Facebook " width="40" height="40" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/4401/4401395.png 4x"></i>
</a>
</li>
<li style="float:left;">
<a href="#">
<i class="fa fa-twitter"> <img src="https://cdn-icons-png.flaticon.com/128/3670/3670151.png" data-src="https://cdn-icons-png.flaticon.com/128/3670/3670151.png" alt="Twitter " title="Twitter " width="40" height="40" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/3670/3670151.png 4x"></i>
</a>
</li>
<li style="float:left;">
<a href="#">
<i class="fa fa-google-plus"><img src="https://cdn-icons-png.flaticon.com/128/145/145804.png" data-src="https://cdn-icons-png.flaticon.com/128/145/145804.png" alt="Google plus " title="Google plus " width="40" height="40" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/145/145804.png 4x"></i>
</a>
</li>
<li style="float:left;"margin:left:2px; >
<a href="#">
<i class="fa fa-linkedin"><img src="https://cdn-icons-png.flaticon.com/128/2626/2626273.png" data-src="https://cdn-icons-png.flaticon.com/128/2626/2626273.png" alt="Linkedin " title="Linkedin " width="40" height="40" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/2626/2626273.png 4x"></i>
</a>
</li>
<li style="float:left" margin-left:2px;>
<a href="#">
<i class="fa fa-instagram"><img src="https://cdn-icons-png.flaticon.com/128/4138/4138124.png" data-src="https://cdn-icons-png.flaticon.com/128/4138/4138124.png" alt="Instagram " title="Instagram " width="40" height="40" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/4138/4138124.png 4x"></i>
</a>
</li>
</ul>
</div>
<div class="col-lg-3 my-useful">
<h3>Useful Links</h3>
<marquee style="min-height:2px;min-width: 50%;background-color: red;direction: right;">
    <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
     <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
    
</marquee>
<span class="animate-border border-white mb-4"></span>
<ul>
<li>
<a >Home</a>
</li>
<li>
<a>About Portal</a>
</li>
<li>
<a>Services</a>
</li>
<li>
<a>Contact us</a>
</li>
<li>
<a>Courses</a>
</li>
<li>
<a>Study Centre</a>
</li>
</ul>
</div>
<div class="col-lg-3 con-info">
<h3>Contact info</h3>
<marquee style="min-height:2px;min-width: 80%;background-color: red;direction: right;">
    <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
     <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
    
</marquee>
<h3 class="con-info-add"> <span class="glyphicon glyphicon-map-marker"></span> NOU</h3>
<p>2nd/3rd Floor, Biscomaun Bhawan, Gandhi Maidan, Patna 800 001 (BIHAR).</p>
<br>
<h3 class="con-info-add"><i class="fa fa-volume-control-phone"><span class="glyphicon glyphicon-earphone"></span></i> +91 7080102007</h3>
<p>Give us a call</p>
</div>
<div class="col-lg-3 my-subs">
<h3>Subscribe</h3>
<marquee style="min-height:2px;min-width: 80%;background-color: red;direction: right;">
    <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
     <div  style="min-height:2px;min-width: 10%;background-color: white;float:left;margin-left: 15px;"></div> 
    
</marquee>
<span class="animate-border border-white mb-4"></span>
<p>Fill the detail below to receive the manual of the NOU e-Gyan Portal </p>
<form action="#">
<div class="form-row">
<div class="col dk-footer-form">
<input type="email" class="form-control" placeholder="Email Address">
<button type="submit">
<i class="fa fa-send"></i>
</button>
</div>
</div>
</form>
</div>
</div>
</div>
    
    
    <div class="container-fluid">
<div class="row">
<div class="col-sm-12 p-0" style="bg-color:white;">
<div class="copyright">
<div class="container-fluid">
<div class="row">
<div class="col-md-12 text-center" style="background-color:darkred"><marquee>
<p style="color:white;" class="m-1">
© Copyright
        <script type="text/javascript">
			var d = new Date();
			document.white(d.getFullYear());
			</script>2023
Designed &amp; Developed By |Softpro India Computer Technologies(p)Ltd <a target="_blank" href="http://www.softproindia.in/" style="color:white;"></a>
                        </p><marquee>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center active"><i class="bi bi-arrow-up-short"></i></a>

</div>
</div>
</div>
</div>
</div>
</div>
</footer>
</div>
    </body>
</html>
<%
}
%>


