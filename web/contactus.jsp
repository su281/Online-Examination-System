<%-- 
    Document   : index
    Created on : Sep 10, 2023, 1:39:21 PM
    Author     : oo7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Online Examination System  </title>
        <link href="css/bootstrap.css"  rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"> </script>
    </head>
    <body>
           
        <div class="container ">
            <jsp:include page="header.jsp"/>
    <div class="row  mt-2">
        <div class="col-sm-12" style="min-height: 500px;background:linear-gradient(-15deg,rgba(255,255,255,.4),rgba(0,0,0,.7)),url(images/images_1.jpg);min-height:70vh;background-repeat:no-repeat;background-size:100% 100%;">           
                   <div  class="col-sm-12" style="min-height:600px;background-color:">
                
                <h2 style="text-align:center;color:blue;">Enquiry from</h2>
                <form class="form-group" method="post" action="controller.jsp">
                    <input type="hidden" name="page" value="contactus"/>
                    <table class="table" style="margin:auto; margin-bottom: 70px; margin-top: 35px;width:60%">
                        <tr>
                            <td style="background-color:lightblue ">
                                Enter Name
                            </td>
                            <td style="background-color:lightblue">
                                <input type="text" name="name" class="form-control"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:lightskyblue"> Enter Gender </td>
                            <td style="background-color:lightskyblue"> 
                                <input type="radio" name="gender" value="male" class="form-check-input"/>Male
                                <input type="radio" name="gender" value="Female" class="form-check-input">Female
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:lightblue">Enter Address</td>
                            <td style="background-color:lightblue">
                                <textarea name="address" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:lightskyblue">
                                Enter Contact No
                            </td>
                            <td style="background-color:lightskyblue"> 
                            <input type="number" name="contactno" class="from-control"/>
                            </td>
                        </tr>
                        <tr>
                            
                            <td style="background-color:lightblue">
                                Enter Email Address
                            </td>
                            <td style="background-color:lightblue">
                                <input type="text" name="emailaddress" class="form-control"/>
                            
                            </td> 
                        </tr>
                        <tr>
                            <td style="background-color:lightskyblue">
                                Enter Enquiry Text
                            </td>
                            <td style="background-color:lightblue">
                                <textarea name="enquirytext" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:lightskyblue"></td>
                            <td style="background-color:lightblue">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </td>
                            
                        </tr>
                        
                    </table>
                    
                </form></div>
                
            </div>
    
            
            <jsp:include page="footer.jsp"/>
           
        </div>
       
    </body>
</html>

