<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/loginsignup.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <title>Document</title>
    </head>

    <body>
        <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
            <div class="card card0 border-0">
                <div class="row d-flex">
                    <div class="col-lg-6">
                        <div class="card1 pb-5">
                            <div class="row"> <img src="img/ERS-logo.png" class="logo"> </div>
                            <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img
                                    src="img/loginpage-content.png" class="image"> </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card2 card border-0 px-4 py-5">
                            <div class="row mb-4 px-3">
                                <h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
                                <div class="facebook text-center mr-3">
                                    <div class="fa fa-facebook"></div>
                                </div>
                                <div class="twitter text-center mr-3">
                                    <div class="fa fa-twitter"></div>
                                </div>
                                <div class="linkedin text-center mr-3">
                                    <div class="fa fa-linkedin"></div>
                                </div>
                            </div>
                            <div class="row px-3 mb-4">
                                <div class="line"></div> <small class="or text-center">Or</small>
                                <div class="line"></div>
                            </div>
                            <form action="userRegister" method="post">
                                <div class="row px-3">  <input class="mb-2" type="text" name="userName" placeholder="Enter Full Name" required></div>
                                <div class="row px-3">  <input class="mb-2" type="text" name="userMobileNo" placeholder="Enter Mobile Number" required></div>
                                <div class="row px-3">  <input class="mb-2" type="email" name="userEmail" placeholder="Enter Email Id" required></div>
                                <div class="row px-3">  <input class="mb-2" type="password" name="password" placeholder="Enter Password" required></div>
                                <div class="row px-3">  <input class="mb-2" type="text" name="city" placeholder="Enter City" required></div>
                                <div class="row px-3">  <input class="mb-3" type="text" name="country" placeholder="Enter Country" required></div>


                                <div class="row mb-2 px-3"> <button type="submit"
                                                                    class="btn btn-primary  justify-content-center">Register</button> 
                                </div>
                            </form>
                            <hr>
                            <div class="row mb-4 px-3"> <small class="font-weight-bold">Already have an account? <a
                                        class="text-info " href="login.jsp">Login</a></small> </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>
    </body>

</html>