<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html lang="en" style="height: auto;"><head>
        <title>Admin Reports</title>

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
    <meta property="fb:app_id" content="655968634437471">
    <meta property="og:title" content="Material Dashboard 2 by Creative Tim" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://demos.creative-tim.com/material-dashboard/pages/dashboard.html" />
    <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/50/original/material-dashboard.jpg" />
    <meta property="og:description" content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you." />
    <meta property="og:site_name" content="Creative Tim" />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="./css/nucleo-icons.css" rel="stylesheet" />
    <link href="./css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="./js/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/material-dashboard.min.css?v=3.0.0" rel="stylesheet" />
    <!-- Anti-flicker snippet (recommended)  -->
    <style>
        .async-hide {
            opacity: 0 !important
        }
    </style>
    <script>
        (function (a, s, y, n, c, h, i, d, e) {
            s.className += ' ' + y;
            h.start = 1 * new Date;
            h.end = i = function () {
                s.className = s.className.replace(RegExp(' ?' + y), '')
            };
            (a[n] = a[n] || []).hide = h;
            setTimeout(function () {
                i();
                h.end = null
            }, c);
            h.timeout = c;
        })(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
            'GTM-K9BGS8K': true
        });
    </script>
    <!-- Analytics-Optimize Snippet -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-46172202-22', 'auto', {
            allowLinker: true
        });
        ga('set', 'anonymizeIp', true);
        ga('require', 'GTM-K9BGS8K');
        ga('require', 'displayfeatures');
        ga('require', 'linker');
        ga('linker:autoLink', ["2checkout.com", "avangate.com"]);
    </script>
    <!-- end Analytics-Optimize Snippet -->
    <!-- Google Tag Manager -->
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s),
                    dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
    </script>
    <!-- End Google Tag Manager -->
</head>


<body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" data-new-gr-c-s-check-loaded="14.1046.0" data-gr-ext-installed="" style="height: auto;">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center" style="height: 0px;">
            <img class="animation__wobble" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60" style="display: none;">
        </div>
        <jsp:include page="header.jsp" />
        <div class="content-wrapper" style="min-height: 689px;">
            <%--<jsp:include page="adminRepo.jsp" />--%>
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Today's Money</p>
                                    <h4 class="mb-0">$53k</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+55% </span>than lask week</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">

                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Today's Users</p>
                                    <h4 class="mb-0">2,300</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+3% </span>than lask month</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">

                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">New Clients</p>
                                    <h4 class="mb-0">3,462</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">-2%</span> than yesterday</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <!--                                <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                                                                    <i class="material-icons opacity-10">weekend</i>
                                                                </div>-->
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Sales</p>
                                    <h4 class="mb-0">$103,430</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+5% </span>than yesterday</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-lg-4 col-md-6 mt-4 mb-4">
                        <div class="card z-index-2 ">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                                    <div class="chart">
                                        <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="mb-0 ">Website Views</h6>
                                <p class="text-sm ">Last Week Performance</p>
                                <hr class="dark horizontal">
                                <div class="d-flex ">
                                    <!--<i class="material-icons text-sm my-auto me-1">schedule</i>-->
                                    <p class="mb-0 text-sm"> updated 2 days ago </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-4 mb-4">
                        <div class="card z-index-2  ">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                                <div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
                                    <div class="chart">
                                        <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="mb-0 "> Daily Sales </h6>
                                <p class="text-sm "> (<span class="font-weight-bolder">+15%</span>) increase in today sales. </p>
                                <hr class="dark horizontal">
                                <div class="d-flex ">
                                    <!--<i class="material-icons text-sm my-auto me-1">schedule</i>-->
                                    <p class="mb-0 text-sm"> updated 4 min ago </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mt-4 mb-3">
                        <div class="card z-index-2 ">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                                <div class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
                                    <div class="chart">
                                        <canvas id="chart-line-tasks" class="chart-canvas" height="170"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <h6 class="mb-0 ">Completed Tasks</h6>
                                <p class="text-sm ">Last Year Performance</p>
                                <hr class="dark horizontal">
                                <div class="d-flex ">
                                    <!--<i class="material-icons text-sm my-auto me-1">schedule</i>-->
                                    <p class="mb-0 text-sm">just updated</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
                        <div class="card">
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
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table m-0">
                                        <thead>
                                            <tr>
                                                <th>Product ID</th>
                                                <th>Product Name</th>
                                                <th>Quantity</th>
                                        <tbody>
                                            <s:iterator value="mostOrderedList">
                                                <tr>
                                                    <td><s:property value="productId" /></td>
                                                    <td><s:property value="productName" /></td>
                                                    <td><s:property value="quantity" /></td>


                                                </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer clearfix">
                                <a href="productAdmin" class="btn btn-sm btn-info float-right">View All Products</a>
                            </div>
                            <!-- /.card-footer -->
                        </div>

                    </div>
                    <div class="card-body p-3">
                        <div class="timeline timeline-one-side">
                            <div class="timeline-block mb-3">
                                <span class="timeline-step">
                                    <i class="material-icons text-success text-gradient">notifications</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">$2400, Design changes</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">22 DEC 7:20 PM</p>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <span class="timeline-step">
                                    <i class="material-icons text-danger text-gradient">code</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">New order #1832412</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">21 DEC 11 PM</p>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <span class="timeline-step">
                                    <i class="material-icons text-info text-gradient">shopping_cart</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">Server payments for April</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">21 DEC 9:34 PM</p>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <span class="timeline-step">
                                    <i class="material-icons text-warning text-gradient">credit_card</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">New card added for order #4395133</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">20 DEC 2:20 AM</p>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <span class="timeline-step">
                                    <i class="material-icons text-primary text-gradient">key</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">Unlock packages for development</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">18 DEC 4:54 AM</p>
                                </div>
                            </div>
                            <div class="timeline-block">
                                <span class="timeline-step">
                                    <i class="material-icons text-dark text-gradient">payments</i>
                                </span>
                                <div class="timeline-content">
                                    <h6 class="text-dark text-sm font-weight-bold mb-0">New order #9583120</h6>
                                    <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">17 DEC</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8 col-md-6 mb-md-0 mb-4">

                        <div class="card">
                            <div class="card-header border-transparent">
                                <h3 class="card-title">Out of Stock Products</h3>

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
                                                <th>Product ID</th>
                                                <th>Product Name</th>
                                                <th>Product Price</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="productList">
                                                <tr>
                                                    <td><s:property value="productId" /></td>
                                                    <td><s:property value="productName" /></td>
                                                    <td><s:property value="productPrice" /></td>
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





            <!--Core JS Files-->   
            <script src="./js/popper.min.js"></script>
            <script src="./js/bootstrap.min.js"></script>
            <script src="./js/perfect-scrollbar.min.js"></script>
            <script src="./js/smooth-scrollbar.min.js"></script>
            <script src="./js/chartjs.min.js"></script>
            <script>
        var ctx = document.getElementById("chart-bars").getContext("2d");

        new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["M", "T", "W", "T", "F", "S", "S"],
                datasets: [{
                        label: "Sales",
                        tension: 0.4,
                        borderWidth: 0,
                        borderRadius: 4,
                        borderSkipped: false,
                        backgroundColor: "rgba(255, 255, 255, .8)",
                        data: [50, 20, 10, 22, 50, 10, 40],
                        maxBarThickness: 6
                    }, ],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5],
                            color: 'rgba(255, 255, 255, .2)'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: 500,
                            beginAtZero: true,
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                            color: "#fff"
                        },
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5],
                            color: 'rgba(255, 255, 255, .2)'
                        },
                        ticks: {
                            display: true,
                            color: '#f8f9fa',
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                },
            },
        });


        var ctx2 = document.getElementById("chart-line").getContext("2d");

        new Chart(ctx2, {
            type: "line",
            data: {
                labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                        label: "Mobile apps",
                        tension: 0,
                        borderWidth: 0,
                        pointRadius: 5,
                        pointBackgroundColor: "rgba(255, 255, 255, .8)",
                        pointBorderColor: "transparent",
                        borderColor: "rgba(255, 255, 255, .8)",
                        borderColor: "rgba(255, 255, 255, .8)",
                        borderWidth: 4,
                        backgroundColor: "transparent",
                        fill: true,
                        data: [50, 40, 300, 320, 500, 350, 200, 230, 500],
                        maxBarThickness: 6

                    }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5],
                            color: 'rgba(255, 255, 255, .2)'
                        },
                        ticks: {
                            display: true,
                            color: '#f8f9fa',
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            color: '#f8f9fa',
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                },
            },
        });

        var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

        new Chart(ctx3, {
            type: "line",
            data: {
                labels: ["<s:property value="productName"/>", "May", "Jun", "Jul", "Aug", "Sep", "<s:property value="productName"/>", "Nov", "Dec"],
                datasets: [{
                        label: "Mobile apps",
                        tension: 0,
                        borderWidth: 0,
                        pointRadius: 5,
                        pointBackgroundColor: "rgba(255, 255, 255, .8)",
                        pointBorderColor: "transparent",
                        borderColor: "rgba(255, 255, 255, .8)",
                        borderWidth: 4,
                        backgroundColor: "transparent",
                        fill: true,
                        data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                        maxBarThickness: 6

                    }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: false,
                    }
                },
                interaction: {
                    intersect: false,
                    mode: 'index',
                },
                scales: {
                    y: {
                        grid: {
                            drawBorder: false,
                            display: true,
                            drawOnChartArea: true,
                            drawTicks: false,
                            borderDash: [5, 5],
                            color: 'rgba(255, 255, 255, .2)'
                        },
                        ticks: {
                            display: true,
                            padding: 10,
                            color: '#f8f9fa',
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                    x: {
                        grid: {
                            drawBorder: false,
                            display: false,
                            drawOnChartArea: false,
                            drawTicks: false,
                            borderDash: [5, 5]
                        },
                        ticks: {
                            display: true,
                            color: '#f8f9fa',
                            padding: 10,
                            font: {
                                size: 14,
                                weight: 300,
                                family: "Roboto",
                                style: 'normal',
                                lineHeight: 2
                            },
                        }
                    },
                },
            },
        });
            </script>
            <script>
                var win = navigator.platform.indexOf('Win') > -1;
                if (win && document.querySelector('#sidenav-scrollbar')) {
                    var options = {
                        damping: '1.0'
                    }
                    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
                }
            </script>
            <!-- Github buttons 
            <script async defer src="./js/buttons.js"></script>
            <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
            <script src="./js/material-dashboard.min.js?v=3.0.0"></script>

            <jsp:include page="sidebar.jsp" />


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
            <jsp:include page="footer.jsp" />

        </div>

</body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>