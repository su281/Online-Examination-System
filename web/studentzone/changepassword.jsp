<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 3:06:37 PM
    Author     : oo7
--%>

<%
   if(session.getAttribute("rollno")==null){
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
        <script>
            function validate()
            {
            var op=document.getElementById("oldpassword");
            var np=document.getElementById("newpassword");
            var cp=document.getElementById("confirmpassword");
            if(op.value=="" || op.value==null)
            {
                alert('Please enter old password');
                op.focus();
            }
            else if(np.value=="" || np.value==null)
            {
                alert('Please enter new password');
                np.focus();
            }
            else if(cp.value=="" || cp.value==null)
            {
                alert('Please enter confirm password');
                cp.focus();
            }
            else if(np.value!=cp.value)
            {
                alert('New password and confirm password are not matched');
                cp.focus();
            }
            else 
            {
                document.getElementById("frmchangepassword").submit();
            }
            
            
            }
        </script>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row" >
         
                       
               <div class="col-sm-12" style="min-height:600px; background-color:plum;">
                   
                    <h2 style="text-align:center; border-radius: 9px">Change Password</h2>
                    <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault();validate();" action="studentcontroller.jsp">
                        <input type="hidden" name="page" value="changepassword"/>
                    <table class="table table-bordered" style="width:70%;margin:auto;border-radius: 9px">
                        <tr>
                            <td style="background-color:palevioletred" border-radius: 9px">Enter Old Password</td>
                            <td  style="background-color:palevioletred">
                                <input type="password" id="oldpassword" class="form-control" name="oldpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:powderblue">Enter New Password </td>
                            <td style="background-color:powderblue"><input type="password" id="newpassword" class="form-control" name="newpassword"/></td>
                        </tr>
                        <tr>
                            <td style="background-color:palevioletred">
                               Confirm Password 
                            </td>
                            <td style="background-color:palevioletred">
                             <input type="password"  id="confirmpassword" class="form-control" name="confirmpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:powderblue"></td>
                            <td style="background-color:powderblue">
                                <button type="submit" class="btn btn-success">Change Password</button>
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
                    
                
                <div class="col-sm-6" style="min-height:80px;background-color:blue;color:white;font-size:30px;text-align:center;line-height: 80px; float: left;">
                    copyright &copy; To Nalanda Open University
                </div>
                <div class="col-sm-6" style="min-height:80px;background-color:aqua;color:white;font-size:30px;text-align:center;line-height: 80px; float: left;">
                    Developed By :- Sunita Jaiswal
                </div>
                </div>
            </div>
    </body>
</html>

<%}%>

