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






        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <style type="text/css">/* Chart.js */
            @keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style></head>
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
                                            <h3 class="card-title">Latest Orders</h3>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                    <i class="fas fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                                    <i class="fas fa-times"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body p-0">
                                            <div class="table-responsive">
                                                <!--<table class="table m-0">-->
                                                <thead>
                                                    <tr>
                                                        <th>Order ID</th>
                                                        <th>Item</th>
                                                        <th>Status</th>
                                                        <th>Popularity</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                                        <td>Call of Duty IV</td>
                                                        <td><span class="badge badge-success">Shipped</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                                        <td>Samsung Smart TV</td>
                                                        <td><span class="badge badge-warning">Pending</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                                        <td>iPhone 6 Plus</td>
                                                        <td><span class="badge badge-danger">Delivered</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                                        <td>Samsung Smart TV</td>
                                                        <td><span class="badge badge-info">Processing</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                                        <td>Samsung Smart TV</td>
                                                        <td><span class="badge badge-warning">Pending</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                                        <td>iPhone 6 Plus</td>
                                                        <td><span class="badge badge-danger">Delivered</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                                        <td>Call of Duty IV</td>
                                                        <td><span class="badge badge-success">Shipped</span></td>
                                                        <td>
                                                            <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                                </table>
                                            </div>
                                            <!-- /.table-responsive -->
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer clearfix">
                                            <a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a>
                                            <a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a>
                                        </div>
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
                                        <div class="card-header">
                                            <h3 class="card-title">Recently Added Products</h3>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                    <i class="fas fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                                    <i class="fas fa-times"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body p-0">
                                            <ul class="products-list product-list-in-card pl-2 pr-2">
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">Samsung TV
                                                            <span class="badge badge-warning float-right">$1800</span></a>
                                                        <span class="product-description">
                                                            Samsung 32" 1080p 60Hz LED Smart HDTV.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">Bicycle
                                                            <span class="badge badge-info float-right">$700</span></a>
                                                        <span class="product-description">
                                                            26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">
                                                            Xbox One <span class="badge badge-danger float-right">
                                                                $350
                                                            </span>
                                                        </a>
                                                        <span class="product-description">
                                                            Xbox One Console Bundle with Halo Master Chief Collection.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">PlayStation 4
                                                            <span class="badge badge-success float-right">$399</span></a>
                                                        <span class="product-description">
                                                            PlayStation 4 500GB Console (PS4)
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                            </ul>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer text-center">
                                            <a href="javascript:void(0)" class="uppercase">View All Products</a>
                                        </div>
                                        <!-- /.card-footer -->
                                    </div>
                                    <!-- /.card -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div><!--/. container-fluid -->
                    </section>
                </div>
            </s:if>

            <s:if test = "#role==2">
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
                                    <div class="card" >
                                        <div class="card-header border-transparent">
                                            <h3 class="card-title">Most Ordered Products</h3>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                    <i class="fas fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                                    <i class="fas fa-times"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body ">
                                            <div class="table-responsive" style="overflow:scroll;">
                                                <table class="table m-0">
                                                    <thead>
                                                        <tr>
                                                            <th>Product Name</th>
                                                            <th>Price</th>
                                                            <th>Quantity Available</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <s:iterator value="mostOrderedList">
                                                            <tr>
                                                                <td><s:property value="productName" /></td>
                                                                <td><s:property value="productPrice" /></td>
                                                                <td><s:property value="quantity" /></td>
                                                                <td>
                                                                    <input type="button" value='Add to Cart' >
                                                                </td>
                                                            </tr>
                                                        </s:iterator>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- /.table-responsive -->
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer clearfix">
                                            <a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a>
                                            <a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a>
                                        </div>
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
                                        <div class="card-header">
                                            <h3 class="card-title">Recently Added Products</h3>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                    <i class="fas fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                                    <i class="fas fa-times"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body p-0">
                                            <ul class="products-list product-list-in-card pl-2 pr-2">
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">Samsung TV
                                                            <span class="badge badge-warning float-right">$1800</span></a>
                                                        <span class="product-description">
                                                            Samsung 32" 1080p 60Hz LED Smart HDTV.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">Bicycle
                                                            <span class="badge badge-info float-right">$700</span></a>
                                                        <span class="product-description">
                                                            26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">
                                                            Xbox One <span class="badge badge-danger float-right">
                                                                $350
                                                            </span>
                                                        </a>
                                                        <span class="product-description">
                                                            Xbox One Console Bundle with Halo Master Chief Collection.
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                                <li class="item">
                                                    <div class="product-img">
                                                        <img src="dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                                                    </div>
                                                    <div class="product-info">
                                                        <a href="javascript:void(0)" class="product-title">PlayStation 4
                                                            <span class="badge badge-success float-right">$399</span></a>
                                                        <span class="product-description">
                                                            PlayStation 4 500GB Console (PS4)
                                                        </span>
                                                    </div>
                                                </li>
                                                <!-- /.item -->
                                            </ul>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer text-center">
                                            <a href="javascript:void(0)" class="uppercase">View All Products</a>
                                        </div>
                                        <!-- /.card-footer -->
                                    </div>
                                    <!-- /.card -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div><!--/. container-fluid -->
                    </section>

                    

                </div>
            </s:if>

            <!-- /.content-header -->

            <!-- Main content -->

            <!-- /.content -->

            <jsp:include page="sidebar.jsp" />

           

        </div>
             <jsp:include page="footer.jsp" />


    </body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>