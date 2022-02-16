<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> 
<link href="css/bootsnipp.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/font-awesome.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/login.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body>
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Forgot Password</h3>
<!--                        <div class="d-flex justify-content-end social_icon">
                            <span><i class="fab fa-facebook-square"></i></span>
                            <span><i class="fab fa-google-plus-square"></i></span>
                            <span><i class="fab fa-twitter-square"></i></span>
                        </div>-->
                    </div>
                    <div class="card-body">
                        <form action="fetchAccount" method="post">
                           
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                </div>
                                <input type="email" name="userEmail" class="form-control" placeholder="E-mail" required>
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                </div>
                                <input type="date" name="userDOB" class="form-control"  required>
                            </div>
                            
                            <br>
                            <div class="form-group">

                                <input type="submit" value="Check Details" class="btn float-right login_btn">
                            </div>

                        </form>
                        <div class="form-group">
                            <br>
                            <br>
                            <br>
                            <br>
                        <a href="login.jsp">
                            <button class="btn float-right btn-primary" ><i class="fa fa-chevron-left" aria-hidden="true">&nbsp;</i>Login</button>
                        </a>
                        </div>
                        <s:if test="ctr>0">
                            <span style="color: white;"><s:property value="msg" /></span>
                        </s:if>
                        <s:else>
                            <span style="color: white;"><s:property value="msg" /></span>
                        </s:else>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>