<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html lang="en" style="height: auto;"><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                Admin Dashboard
            </s:if>
            <s:if test = "#role==2">
                Customer Dashboard
            </s:if></title>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="./css/all.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="./css/OverlayScrollbars.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="./css/adminlte.min.css">


        <!-- Google Font: Source Sans Pro -->
        <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">-->
        <!-- Font Awesome -->
        <!--<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">-->
        <!-- Ionicons -->
        <link rel="stylesheet" href="./css/ionicons.min.css">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="./css/tempusdominus-bootstrap-4.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="./css/icheck-bootstrap.min.css">
        <!-- JQVMap -->
        <link rel="stylesheet" href="./css/jqvmap.min.css">
        <!-- Theme style -->
        <!--<link rel="stylesheet" href="dist/css/adminlte.min.css">-->
        <!-- overlayScrollbars -->
        <!--<link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">-->
        <!-- Daterange picker -->
        <link rel="stylesheet" href="./css/daterangepicker.css">
        <!-- summernote -->
        <link rel="stylesheet" href="./css/summernote-bs4.min.css">
        
        <script>

            function addProductToCart(pid)
            {

                window.location.reload();

                var qty = 1;




//                alert("Product Id =" + pid + ",Quantity = " + qty);
                $.ajax({
                    url: 'AddProductToCart',
                    method: 'POST',
                    data: {productId: pid, quantity: qty},

                    success: function (abc) {
                        $('#result').html(abc);
                    },

                    error: function (jqXHR, exception) {
                        console.log('Error occured!!');
                    }
                });
            }


        </script>






        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <style type="text/css">/* Chart.js */
            @keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style>
    
    
   
    
    
    
    
    
    </head>
   
    
    
    
    
    
    
    
    <body class="sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" data-new-gr-c-s-check-loaded="14.1046.0" data-gr-ext-installed="" style="height: auto;">

        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>


            <!-- Content Header (Page header) -->

            <jsp:include page="header.jsp" />

            <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
               <div class="content-wrapper" style="min-height: 689px;">   
                    <section class="content">
                        <div class="container-fluid">
                            <!-- Info boxes -->
                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-info elevation-1"><i class="fas fa-desktop"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Desktop</span>
                                            <span class="info-box-number">
                                                1,000

                                            </span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-laptop"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Laptop</span>
                                            <span class="info-box-number">1,410</span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->

                                <!-- fix for small devices only -->
                                <div class="clearfix hidden-md-up"></div>

                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-success elevation-1"><i class="fas fa-tablet-alt"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Tablet</span>
                                            <span class="info-box-number">760</span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">New Customers</span>
                                            <span class="info-box-number">452</span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->


                            <!-- /.row -->

                            <!-- Main row -->
                            <div class="row">
                                <!-- Left col -->
                                <div class="col-md-8">
                                    <!-- MAP & BOX PANE -->

                                    <!-- /.card -->

                                    <!-- /.row -->

                                    <!-- TABLE: LATEST ORDERS -->
                                    <div class="card">
                                         <div class="card-header border-transparent">
                                    <h3 class="card-title">Our Vendors</h3>

                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                        <div class="card-body p-0">
                                            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
                                        </div>
                                        <!-- /.table-responsive -->
                                    </div>
                                    <!-- /.card-body -->
                                    
                                    <!-- /.card-footer -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->

                            <div class="col-md-4">
                                <!-- Info Boxes Style 2 -->



                                <!-- /.card -->

                                <!-- PRODUCT LIST -->
                                <div class="card">
                                    <div class="card-header border-transparent">
                                    <h3 class="card-title">Our Products</h3>

                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                    <div class="card-body p-0">
                                   <canvas class="my-4 w-100" id="myPieChart" width="900" height="380"></canvas>
                                    </div>
                                    
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        </section>
                        <!-- /.row -->
                </div>
        
                            </div>

    </s:if>

    <s:if test = "#role==2">
        <div class="content-wrapper" style="min-height: 689px;">   
                    <section class="content">
                        <div class="container-fluid">
                            <h2>Our Products</h2>
                            <!-- Info boxes -->
<!--                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-info elevation-1"><i class="fas fa-desktop"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Desktop</span>
                                            <span class="info-box-number">
                                                1,000

                                            </span>
                                        </div>
                                         /.info-box-content 
                                    </div>
                                     /.info-box 
                                </div>
                                 /.col 
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-laptop"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Laptop</span>
                                            <span class="info-box-number">1,410</span>
                                        </div>
                                         /.info-box-content 
                                    </div>
                                     /.info-box 
                                </div>
                                 /.col 

                                 fix for small devices only 
                                <div class="clearfix hidden-md-up"></div>

                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-success elevation-1"><i class="fas fa-tablet-alt"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Tablet</span>
                                            <span class="info-box-number">760</span>
                                        </div>
                                         /.info-box-content 
                                    </div>
                                     /.info-box 
                                </div>
                                 /.col 
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box mb-3">
                                        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">New Customers</span>
                                            <span class="info-box-number">452</span>
                                        </div>
                                         /.info-box-content 
                                    </div>
                                     /.info-box 
                                </div>
                                 /.col 
                            </div>-->
                            <!-- /.row -->


                            <!-- /.row -->

                            <!-- Main row -->
                            <div class="row">
                                <!-- Left col -->

                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                            <div class="row">
                                <s:iterator value="productList"> 
                                    <div class="col-sm-4">
                                        <div class="card">

                                            <img src="img/<s:property value="productImage" />"  alt="Avatar" style="width:100%">
                                            <div class="container">
                                                <h4><b><s:property value="productName" /></b></h4>
                                                <p>Price: <s:property value="productPrice" /></p>
                                            </div>
                                            <form action="AddProductToCart" method="post">

                                                <input type="hidden" name="productId" value="<s:property value="productId" />">
                                                <input type="hidden" name="productName" value="<s:property value="productName" />">
                                                <!--<input type="hidden" name="quantity" value="1">-->

                                                <a class="btn btn-outline-success" onclick="addProductToCart(<s:property value="productId"/>)">
                                                    <!--<button type="submit" class="button-update">Add to Cart</button>--> Add To Cart
                                                </a>

                                            </form>
                                        </div>
                                    </div>
                                </s:iterator>
                            </div>
                        </div>
                    </section>
                    <!-- /.row -->
                </div>
    </s:if>

    <!-- /.content-header -->

    <!-- Main content -->

    <!-- /.content -->

    <jsp:include page="sidebar.jsp" />



</div>
<jsp:include page="footer.jsp" />

<script src="./js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="./js/feather.min.js" crossorigin="anonymous"></script>
<script src="./js/Chart.min.js" crossorigin="anonymous"></script>
 <script >

    (function () {
        'use strict'

        feather.replace({'aria-hidden': 'true'})
        var items = <s:property value='%{sessionMap.get("itemsList")}' />
        // Graphs
        var ctx = document.getElementById('myChart')
        // eslint-disable-next-line no-unused-vars
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: [

                    'Samsung',
                    'Dell',
                    'Apple',
                    'HP',
                    'Avita',
                    'Lenovo',
                    'Xiaomi',
                    'LG',
                    'Microsoft',
                    'Asus',
                    'MSI',
                    'Acer'
                ],
                datasets: [{
                        data: [
                            items[0], items[1], items[2], items[3], items[4], items[5], items[6], items[7], items[8], items[9], items[10], items[11]
                        ],
                        lineTension: 0,
                        backgroundColor: 'transparent',
                        borderColor: '#007bff',
                        borderWidth: 4,
                        pointBackgroundColor: '#007bff'
                    }]
            },
            options: {
                scales: {
                    yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                },
                legend: {
                    display: false
                }
            }
        })
    })()</script>
<script >

    (function () {
        'use strict'

        feather.replace({'aria-hidden': 'true'})
        var items = <s:property value='%{sessionMap.get("typeList")}' />
        // Graphs
        var ctx = document.getElementById('myPieChart')
        // eslint-disable-next-line no-unused-vars
        var myPieChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: [

                    'Laptop',
                    'Desktop',
                    'Tablet'
                    
                ],
                datasets: [{
                        data: [
                            items[0], items[1], items[2]
                        ],
                        lineTension: 0,
                        backgroundColor: ['red','blue','orange'],
                        
                        pointBackgroundColor: '#007bff'
                    }]
            },
            
        })
    })()</script>
    
</body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>