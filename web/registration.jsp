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
                
                  <div class="col-sm-12" style="min-height: 500px;background:linear-gradient(-15deg,rgba(255,255,255,.4),rgba(0,0,0,.7)),url(images/reg.jpg);min-height:70vh;background-repeat:no-repeat;background-size:100% 100%;">           
                   <div  class="col-sm-12" style="min-height:600px;background-color:">
                
             
                    <h2 style="text-align:center;color:blue;"> Student Registration Form </h2>
                    <form class="form-group" method="post" action="controller.jsp" style="background-color:">
                        <input type="hidden" name="page" value="registration"/>
                        <table class="table table-border" style="margin:auto; margin-bottom: 70px; margin-top: 35px;width:60%">
                            <tr>
                                <td style="background-color:lightblue">Enter Roll No </td>
                                <td style="background-color:lightblue">
                                    <input type="number" name="rollno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue"> Enter Name </td>
                                <td style="background-color:lightskyblue">
                                    <input type="text" name="name" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Enter Father Name</td>
                                <td style="background-color:lightblue">
                                    <input type="text" name="fname" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue"> Enter Mother Name</td>
                                <td style="background-color:lightskyblue">
                                    <input type="text" name="mname" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Select Gender </td>
                                <td style="background-color:lightblue">
                                    <input type="radio" name="gender" value="male" class="form-check-input"/>Male
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue">Enter Address </td>
                                <td style="background-color:lightskyblue">
                                    <textarea name="address" class="form-control"/></textarea>  
                                 
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Select Program </td>
                                <td style="background-color:lightblue">
                                    <select name="program" class="form-control"/>
                                        <option selected>-Select Program-</option>
                                        <option value="B.Tech."> B.Tech.</option>
                                        <option value="M.Tech."> M.Tech.</option>
                                        <option value="Diploma"> Diploma </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td  style="background-color:lightskyblue">Select Branch</td>
                                <td style="background-color:lightskyblue">
                                    <select name="branch" class="form-control"/>
                                        <option selected>-Select Branch-</option>
                                        <option value="cs" > cs </option>
                                        <option value="IT" > IT </option>
                                        <option  value="CE"> CE</option>
                                        <option  value="ME"> ME</option>
                                        
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Select Year</td>
                                <td style="background-color:lightblue">
                                    <select name="year" class="form-control"/>
                                        <option selected>-select Year-</option>
                                        <option value="First Year">First Year</option>
                                        <option value="Second Year">Second Year</option>
                                        <option value="Third Year">Third Year</option>
                                        <option value="Final Year">Final Year</option>
                                        
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue">Enter Contact No</td>
                                <td style="background-color:lightskyblue">
                                <input type="number" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Enter Email Address</td>
                                <td style="background-color:lightblue">
                                    <input type="text" name="emailaddress" class="form-control"/>
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue">Enter Password </td>
                                <td style="background-color:lightskyblue">
                                    <input type="password" name="password" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightblue">Re-enter Password </td>
                                <td style="background-color:lightblue">
                                    <input type="password" name="confirmpassword" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color:lightskyblue"></td>
                                <td style="background-color:lightskyblue">
                                    <button type="submit" class="btn btn-success"> Register </button>
                                </td>
                            </tr>
                            
                        </table>
                        
                    </form>
                </div>
                
                
        
            
            </div>
                
             <jsp:include page="footer.jsp"/>
            
           
        </div>
       
    </body>
</html>
