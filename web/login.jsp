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
        <script src="js/bootstrap.bundle.js"></script>
        <style>
            
           
                .btn {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.btn-success:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.table{
    width:60px;
    border:1px solid;
    background: red;
    
}
            
        </style>
        
        
    </head>

    <body>
        <script>
            function validate()
            {
                var userid = document.getElementById("userid");
                var password = document.getElementById("password");
                if (userid.value == "" || userid.value == null)
                {
                    alert('Please enter userid ');
                    userid.focus();
                }
                else if (password.value == "" || password.value == null)
                {
                    alert('Please enter password');
                    password.focus();
                }
                else
                {
                    document.getElementById("frmlogin").submit();

                }
            }
        </script>
        <div class="container ">
            <jsp:include page="header.jsp"/>
            <div class="row  mt-2">
     <div class="col-sm-12" style="min-height: 600px;background:linear-gradient(-15deg,rgba(255,255,255,.4),rgba(0,0,0,.7)),url(images/flo.jpg);min-height:70vh;background-repeat:no-repeat;background-size:100% 100%;">         
                
                <div class="col-sm-12" style="min-height:600px;background-color:">
              
                    <h2 style="color:blue;text-align:center; margin-top: 30px"> Login Form </h2> 
                    <form id="frmlogin"  onsubmit="event.preventDefault();validate();"  class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="login"/>
                        <table class="table table-bordered" style="margin:auto;width:50%;">

                 <tr>
                   <td style="background-color:lightskyblue"> <img src="https://cdn-icons-png.flaticon.com/128/2321/2321232.png" data-src="https://cdn-icons-png.flaticon.com/128/2321/2321232.png" alt="User " title="User " width="30" height="30" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/2321/2321232.png 4x">Enter User Id </td>

                     <td style="background-color:lightskyblue">
              <input type="text" name="userid" class="form-control" id="userid"/>
            </td>
           </tr>
       <tr>
       <td style="background-color:lightblue"> <img src="https://cdn-icons-png.flaticon.com/128/2889/2889676.png" data-src="https://cdn-icons-png.flaticon.com/128/2889/2889676.png" alt="Padlock " title="Padlock " width="30" height="30" class="lzy lazyload--done" srcset="https://cdn-icons-png.flaticon.com/128/2889/2889676.png 4x">Enter Password</td>
      <td style="background-color:lightblue">
          <input type="password" name="password" class="form-control" id="password"/> 
        </td>
      </tr>
             <tr>
       <td style="background-color:lightskyblue"></td>
          <td style="background-color:lightskyblue">
     <button type="submit" class="btn btn-success">Login</button>
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
