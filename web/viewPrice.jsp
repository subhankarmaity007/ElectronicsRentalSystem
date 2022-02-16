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




<!--        <script>

            function orderPlace(pid)
            {

                

                var qty = document.getElementById("Quantity_" + pid).value;
                var eDate = document.getElementById("EndDate_" + pid).value;
                var sDate = document.getElementById("StartDate_" + pid).value;

                alert("Product Id =" + pid + ",Quantity = " + qty);
                $.ajax({
                    url: 'placeOrder',
                    method: 'POST',
                    data: {productId: pid, quantity: qty, endDate: eDate, startDate:sDate},

                    success: function (resultText) {
                        $('#result').html(resultText);
                    },

                    error: function (jqXHR, exception) {
                        console.log('Error occured!!');
                    }
                });
            }



        </script>-->





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


            <s:if test = "#role==2">
                <div class="content-wrapper" style="min-height: 689px;">
                    <!-- Content Header (Page header) -->

                    <!-- /.content-header -->
                    <div class="container-fluid py-4">
                        <div class="row mb-4">
                            <div class="col-lg col-md-8 mb-md-6 mb-4">
                                <div class="card card-responsive">
                                    <div class="card-header border-transparent">
                                        <h3 class="card-title">Products For Rent</h3>

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
                                            <table class="table table-striped table-sm">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Product Id</th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Product Make</th>
                                                        <th scope="col">Product Price</th>
                                                        <th scope="col">Product Quantity</th>
                                                        <th scope="col">Total Product Amount</th>
<!--                                                        <th scope="col">Start Date</th>
                                                        <th scope="col">End Date</th>-->



                                                    </tr>
                                                </thead>
                                        </div>
                                        <tbody><s:set var="price" value="%{0}" />
                                            <s:iterator value='%{sessionMap.get("productsInCart")}'>
                                                <tr>
                                                    <td><s:property value="productId" /></td>
                                                    <td><s:property value="productName" /></td>
                                                    <td><s:property value="productMake" /></td>
                                                    <td><s:property value="price" /></td>

                                                    <td ><s:property value="quantity" /></td>
                                                    <td><s:property value="productPrice" /></td>
                                                    <s:set var="price" value="%{productPrice+#attr.price}" />
<!--                                                    <td><input type="date" name="startDate" id='StartDate_<s:property value="productId"/>'></td>

                                                    <td><input type="date" name="endDate" id='EndDate_<s:property value="productId"/>'></td>
                                                    <td>
                                                        <input type='hidden' id='Quantity_<s:property value="productId"/>' name='quantity' value='<s:property value="quantity" />'>
                                                    </td>



                                                    <td>
                                                        <input class="btn btn-outline-success" type="button" value='Add' 
                                                               onclick="orderPlace(<s:property value="productId"/>)">
                                                    </td>-->
                                                </tr>
                                            </s:iterator>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td><b>Total Amount</b></td>
                                                <td><i class="fa fa-inr"></i><s:property value="%{''+#attr.price}" /></td>
                                                

                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td> <a href="placeOrder" class="btn btn-outline-success">Place Order</a></td>

                                            </tr>
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