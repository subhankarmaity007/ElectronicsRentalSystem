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
        <!--===Data table==-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">

        <style>
            .hide {
                display: none;
            }



            .myDIV:hover + .hide {
                /* border: solid orange 4px;*/
                outline-style: solid;
                outline-color: orange;
                text-align: center;
                width: 300px;
                height: 160px;
                /* background-color: black;*/
                display: block;
                color: green;

            }
        </style>






        <script>

            function addProductToCart(pid)
            {

                window.location.reload();

                var qty = document.getElementById("Quantity_" + pid).value;




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
                                        <h2 class="card-title"><b>Products Available</b></h2>

                                        <!--                                        <div class="card-tools">
                                                                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                                                                        <i class="fas fa-minus"></i>
                                                                                    </button>
                                                                                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                                                                                        <i class="fas fa-times"></i>
                                                                                    </button>
                                                                                </div>-->
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body p-0">

                                        <div class="table-responsive">
                                            <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>

                                                        <th scope="col" style="display:none;">Product Id</th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Product Make</th>
                                                        <th scope="col">Product Specification</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Availability</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Actions</th>

                                                    </tr>
                                                </thead>
                                        </div>
                                        <tbody>

                                            <s:iterator value="productList">
                                                <tr>

                                                    <td style="display:none;"><s:property value="productId" /></td>
                                                    <td><s:property value="productName" /></td>
                                                    <td><s:property value="productMake" /></td>
                                                    <!--<td><textarea readonly rows="3" cols="50"><s:property value="productSpecification" /></textarea></td>-->
                                                    <td><div class="myDIV">Product Specification Hover over it....</div><div class="hide"> <s:property value="productSpecification" /></div></td>
                                                    <td><s:property value="productPrice" /></td>
                                                    <td><s:property value="availability" /></td>
                                                    <td class="activeInactive" style="text-align: center;"> 
                                                        <s:if test="%{status ==1}">
                                                            <b><i><p style="background-color: #0af545; color: white;">Active</p></i></b> 
                                                        </s:if>
                                                        <s:if test="%{status ==0}">
                                                            <b><i><p style="background-color: #f5704c; color: white;">Inactive</p></i></b> 
                                                        </s:if>
                                                    </td>

                                                    <td>
                                                        <a  href="updateproduct.action?submitType=updatedata&productId=<s:property value="productId"/>">
                                                            <i class="fas fa-edit">Edit</i>

                                                            <!--<button class="btn btn-success">Update</button>-->
                                                        </a>
                                                        &nbsp;

                                                        &nbsp;&nbsp;
                                                        <a  href="deleterecord.action?productId=<s:property value="productId"/>&status=<s:property value="status" />">
                                                            <i class="fas fa-toggle-on">Toggle</i>
                                                            <!--<button class="btn  btn-danger">Inactive</button>-->
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
                                    <h3 class="card-title">Products For Rent</h3><span id="result"></span>

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
                                        <table id="dtBasicExample">
                                            <thead>
                                                <tr>

                                                    <th scope="col">Product Image</th>
                                                    <th scope="col">Product Name</th>
                                                    <th scope="col">Product Make</th>
                                                    <th scope="col">Product Specification</th>
                                                    <th scope="col">Price</th>
                                                    <th scope="col">Availability</th>


                                                </tr>
                                            </thead>
                                    </div>
                                    <tbody>
                                        <s:iterator value="productList">
                                            <tr>

                                                <td><img src="img/<s:property value="productImage" />" height="100" width="100"></td>
                                                <td><s:property value="productName" /></td>
                                                <td><s:property value="productMake" /></td>
                                                <!--<td><s:property value="productSpecification" /></td>-->
                                                <td><div class="myDIV">Product Specification Hover over it....</div><div class="hide"> <s:property value="productSpecification" /></div></td>
                                                <td><s:property value="productPrice" /></td>
                                                <td><s:property value="availability" /></td>

                                                <td><input type="number" min="1" oninput="this.value=Math.abs(this.value)" max="<s:property value="availability" />" 
                                                           onkeyup="if (this.value < 0) {
                    this.value = this.value * -1
                }
                if (this.value ><s:property value="availability" />) {
                    this.value =<s:property value="availability" />
                }" 
                                                           id='Quantity_<s:property value="productId"/>' value=""></td>
                                                <td>
                                                    <input class="btn btn-outline-success" type="button" value='Add to Cart' onclick="addProductToCart(<s:property value="productId"/>)">
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

    <jsp:include page="sidebar.jsp" />

    <jsp:include page="footer.jsp" />

</div>

<script>
    $(document).ready(function () {
        $('#dtBasicExample').DataTable({
            "pagingType": "full_numbers"
        });
    });
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
<!--==Data Table==-->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<!--<script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jszip-2.5.0/dt-1.11.4/b-2.2.2/b-html5-2.2.2/b-print-2.2.2/datatables.min.js"></script>-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>

</body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>