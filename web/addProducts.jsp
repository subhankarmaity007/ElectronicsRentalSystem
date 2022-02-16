<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
<s:if test = "#role!=1">
    <jsp:forward page="login.jsp" />
</s:if>

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
                    <s:if test="ctr>0">
                        <span style="color: green;"><s:property value="msg" /></span>
                    </s:if>
                    <s:else>
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:else>

                    <!-- Content Header (Page header) -->

                    <!-- /.content-header -->
                    <h3 class="text-primary text-center" >Add Product</h3>
                    <div class="table-responsive">
                        <div>
                            <form action="registerProduct" method="post">

                                <!--<font style="color: #a52834"></font>-->
                                <div class="table-responsive">
                                    <table class="table table-striped table-sm">
                                        <tr>
                                            <td><b>Product Name:</b></td>
                                            <!--<td><input type="text" name="productName" value="" size="35" required></td>-->
                                            <td>
                                                <select name="productName" style="width:295px">
                                                    <option selected disabled>Select Product Name</option>
                                                    <option value="Laptop">Laptop</option>
                                                    <option value="Desktop">Desktop</option>
                                                    <option value="Tablet">Tablet</option>
                                                </select>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Product Make:</b></td>
                                            <td>
                                                <select name="productMake"  style="width:295px">
                                                    <option selected disabled>Select Product Make</option>
                                                    <option value="Acer">Acer</option>
                                                    <option value="Alienware">Alienware</option>
                                                    <option value="Apple">Apple</option>
                                                    <option value="Asus">Asus</option>
                                                    <option value="Avita<">Avita</option>
                                                    <option value="Dell">Dell</option>
                                                    <option value="Google">Google</option>
                                                    <option value="HCL">HCL</option>
                                                    <option value="HP">HP</option>
                                                    <option value="Lenovo">Lenovo</option>
                                                    <option value="LG">LG</option>
                                                    <option value="Microsoft">Microsoft</option>
                                                    <option value="MSI">MSI</option>
                                                    <option value="Oneplus">Oneplus</option>
                                                    <option value="Samsung">Samsung</option>
                                                    <option value="Sony">Sony</option>
                                                    <option value="Xiaomi">Xiaomi</option>   
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>Product Specification:</b></td>
                                            <td><textarea type="text" name="productSpecification"  rows="3" cols="38" required></textarea></td>
                                            <!--<td><input type="text" name="productId" value=""></td></tr>-->
                                        </tr>
                                        <tr>
                                            <td><b>Product Rent Price:</b></td>
                                            <td><input type="number" min="1" oninput="this.value=Math.abs(this.value)" step=0.01 name="productPrice"  style="width:295" required></td>
                                        </tr>
                                        <tr>
                                            <td><b>Product Quantity:</b></td>
                                            <td><input type="number" oninput="this.value=Math.abs(this.value)" name="availability"  style="width:295" required></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <button class="btn btn-success" type="submit">Add Product</button>
                                                <a href="" Style="padding-left: 15px; padding-right: 15px;"><button class="btn btn-secondary" value="">Cancel</button></a>

                                            </td>

                                        </tr>
                                    </table>
                                </div>

                            </form>
                            <table class="table table-striped table-sm">
                                <tr>

                                    <td style="padding-left:36%"><a href="productAdmin"><button class="btn btn-info" value="">Report</button></a></td>
                                </tr>

                            </table>
                            <div><hr style="height:5px"></div>
                            <h3 class="text-primary text-center">Upload Bulk Products</h3>
                            <form action="fileupload" method="post">
                                <table class="table table-striped table-sm">
                                    <tr>
                                        <td><b>Choose File(From Desktop Directory):</b></td>
                                        <td><input type="file" id="myFile" name="fileName" style="width:300px" ><br></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><button type="submit" class="btn btn-primary text-center">Submit</button></td>
                                    </tr>
                                    <br>
                                </table>
                            </form>
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