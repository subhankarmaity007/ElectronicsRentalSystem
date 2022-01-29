<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en" style="height: auto;"><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Customer Dashboard</title>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        <style type="text/css">/* Chart.js */
            @keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style></head>
    <body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" data-new-gr-c-s-check-loaded="14.1046.0" data-gr-ext-installed="" style="height: auto;">
        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <jsp:include page="header.jsp" />
            <div class="content-wrapper" style="min-height: 689px;">
                <!-- Content Header (Page header) -->

                <!-- /.content-header -->

                <!-- Main content -->
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
                                </div>
                            </div>
                        </div>

                        <div class="row" >
                            <!-- Left col -->
                            <div class="col-md-8">
                                <div class="card" style{overflow: scroll;}>
                                    <div class="card-header border-transparent">
                                        <h3 class="card-title">Products You May Like</h3>

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
                                    </div>

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
                                <div class="card">
                                    <div class="card-header border-transparent">
                                        <h3 class="card-title">Recently added Products</h3>

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
                                        <div class="table-responsive">
                                            <table class="table m-0">
                                                <thead>
                                                    <tr>
                                                        <th>Product Name</th>
                                                        <th>Price</th>
                                                        <th>Product Make</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <s:iterator value="newProductList">
                                                        <tr>
                                                            <td><s:property value="productName" /></td>
                                                            <td><s:property value="productPrice" /></td>
                                                            <td><s:property value="productMake" /></td>
                                                        </tr>
                                                    </s:iterator>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!--                        </div>-->
                    </div>
                </section>

            </div>
            <jsp:include page="sidebar.jsp" />
            <jsp:include page="footer.jsp" />
        </div>
    </body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>