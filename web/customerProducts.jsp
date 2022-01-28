<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="s" uri="/struts-tags"%>


<html lang="en" style="height: auto;"><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>
            <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                Admin Products
            </s:if>
            <s:if test = "#role==2">
                Customer Products
            </s:if>
        </title>


        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <script>
            
            function addProductToCart(pid)
            {

                var qty = document.getElementById("Quantity_" + pid).value;
                alert(qty);
                $.ajax({
                    url: 'AddProductToCart',
                    method: 'POST',
                    data: {productId: pid, quantity: qty},
                    success: function (resultText) {
                        $('#result').html(resultText);
                    },
                    error: function (jqXHR, exception) {
                        console.log('Error occured!!');
                    }
                });
            }


        </script>
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

            <jsp:include page="header.jsp" />

            <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                <div class="content-wrapper" style="min-height: 689px;">               

                    <!-- Content Header (Page header) -->

                    <!-- /.content-header -->
                    <h2>Products List</h2>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Product Id</th>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Product Make</th>
                                    <th scope="col">Product Specification</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Availability</th>
                                    <th scope="col">Product Image</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                    </div>
                    <tbody>
                        <s:iterator value="productList">
                            <tr>
                                <td><s:property value="productId" /></td>
                                <td><s:property value="productName" /></td>
                                <td><s:property value="productMake" /></td>
                                <td><s:property value="productSpecification" /></td>
                                <td><s:property value="productPrice" /></td>
                                <td><s:property value="availability" /></td>
                                <td><s:property value="actions" /></td>

                                <td>
                                    <a class="btn btn-outline-success" href="updateproduct.action?submitType=updatedata&productId=<s:property value="productId"/>">
                                        <button class="button-update">Update</button>
                                    </a>
                                    <a class="btn btn-outline-danger" href="deleterecord.action?productId=<s:property value="productId"/>">
                                        <button class="button-delete">Delete</button>
                                    </a>
                                </td>
                            </tr>
                        </s:iterator>
                    </tbody>
                    </table>
                </div>
                <!-- /.content -->
            </div>
        </s:if>

        <s:if test = "#role==2">
            <div class="content-wrapper" style="min-height: 689px;">   
                <h1>Customer Products List</h1>           

                <!-- Content Header (Page header) -->

                <!-- /.content-header -->

                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>
                                <th scope="col">Product Id</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Product Make</th>
                                <th scope="col">Product Specification</th>
                                <th scope="col">Price</th>
                                <th scope="col">Availability</th>
                                <th scope="col">Product Image</th>

                            </tr>
                        </thead>
                </div>
                <tbody>
                    <s:iterator value="productList">
                        <tr>
                            <td><s:property value="productId" /></td>
                            <td><s:property value="productName" /></td>
                            <td><s:property value="productMake" /></td>
                            <td><s:property value="productSpecification" /></td>
                            <td><s:property value="productPrice" /></td>
                            <td><s:property value="availability" /></td>
                            <td><s:property value="productImage" /></td>
                            <td><input type="number" min="1" oninput="this.value=Math.abs(this.value)" max="<s:property value="availability" />" onkeyup="if (this.value < 0) {
                    this.value = this.value * -1
                }" id='Quantity_<s:property value="productId"/>' value=""></td>
                            <td>
                                <input class="btn btn-outline-success" type="button" value='Add to Cart' onclick="addProductToCart(<s:property value="productId"/>)">
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
        </div>
        <!-- /.content -->
    </div>
</s:if>



<jsp:include page="sidebar.jsp" />

<jsp:include page="footer.jsp" />
</div>



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

</body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>