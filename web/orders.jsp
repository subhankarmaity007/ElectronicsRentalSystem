<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html lang="en" style="height: auto;"><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                Admin 
            </s:if>
            <s:if test = "#role==2">
                Customer 
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
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
        



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        <style type="text/css">/* Chart.js */
            @keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style></head>
    <body class="sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" data-new-gr-c-s-check-loaded="14.1046.0" data-gr-ext-installed="" style="height: auto;">
        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
                <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
            </div>
            <jsp:include page="header.jsp" />

            <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                <div class="content-wrapper" style="min-height: 689px;">
                    <!-- Content Header (Page header) -->

                    <!-- /.content-header -->
                    <div class="container-fluid py-4">
                        <div class="row mb-4">
                            <div class="col-lg col-md-8 mb-md-6 mb-4">
                                <div class="card card-responsive">
                                    <div class="card-header border-transparent">
                                        <h3 class="card-title">Ordered Products</h3>

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
                                            <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th scope="col" style="display:none;">Order Id</th>
                                                        <th scope="col">User Name </th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Start Date</th>
                                                        <th scope="col">End Date</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col">Actions</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <s:iterator value="orderList">
                                                        <tr>
                                                            <td style="display:none;"><s:property value="orderId" /></td>
                                                            <td><s:property value="userName" /></td>
                                                            <td><s:property value="productName"/></td>
                                                            <td><s:property value="startDate" /></td>
                                                            <td><s:property value="endDate" /></td>
                                                            <td><s:property value="quantity" /></td>


                                                            <td>
                                                                <a class="fa fa-edit" href="updateOrder.action?submitType=updatedata&orderId=<s:property value="orderId"/>">
<!--                                                                    <button class="btn btn-success">Update</button>-->
                                                                </a>
                                                                <a class="fa fa-archive" href="deleteOrder.action?orderId=<s:property value="orderId"/>">
<!--                                                                    <button class="btn btn-danger">Delete</button>-->
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </s:iterator>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- /.content -->
                </div>
            </s:if>

            <s:if test = "#role==2">
               <div class="content-wrapper" style="min-height: 689px;">
                    <!-- Content Header (Page header) -->

                    <!-- /.content-header -->
                    <div class="container-fluid py-4">
                        <div class="row mb-4">
                            <div class="col-lg col-md-8 mb-md-6 mb-4">
                                <div class="card card-responsive">
                                    <div class="card-header border-transparent">
                                        <h3 class="card-title">Previous Orders</h3>

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
                                            <table id="dtBasicExample" class="table table-striped table-bordered table-sm cell-border" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Product Make</th>                                                        
                                                        <th scope="col">Quantity Ordered</th>
                                                        <th scope="col">Product Price </th>
                                                        <th scope="col">Rented On</th>
                                                        <th scope="col">Rented To </th>
                                                        

                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <s:iterator value="customerOrderList">
                                                        <tr>
                                                            <td><s:property value="productName" /></td>
                                                            <td><s:property value="productMake"/></td>
                                                            <td><s:property value="quantity" /></td>
                                                            <td><s:property value="productPrice" /></td>                                                            
                                                            <td><s:property value="startDate" /></td>
                                                            <td><s:property value="endDate" /></td>



                                                        </tr>
                                                    </s:iterator>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- /.content -->
                </div>
            </s:if>

            <jsp:include page="sidebar.jsp" />

            <jsp:include page="footer.jsp" />

        </div>
            <script>
                      $(document).ready(function() {
               $('#dtBasicExample').DataTable( {
                   "pagingType": "simple"
               } );
           } );
            </script>
        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.js"></script>

        <!-- PAGE PLUGINS -->
        <!-- jQuery Mapael -->
        <script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
        <script src="plugins/raphael/raphael.min.js"></script>
        <script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
        <script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
        <!-- ChartJS -->
        <script src="plugins/chart.js/Chart.min.js"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="dist/js/pages/dashboard2.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.min.js"></script>
<!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.11.4/b-2.2.2/b-html5-2.2.2/b-print-2.2.2/datatables.min.css"/>-->
 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<!--<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.11.4/b-2.2.2/b-html5-2.2.2/b-print-2.2.2/datatables.min.js"></script>-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
    </body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>