
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>

<s:if test = "#role!=1&&#role!=2">

    <jsp:forward page="login.jsp"/>

</s:if>
<s:else>




    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="login" class="nav-link"><i class="fas fa-home"></i>Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">






            <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
            <s:if test = "#role==1">
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <!--href="aboutUs"-->
                        About Us
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="logout" role="button">

                        Sign-Out <i class="fas fa-sign-in-alt"></i>
                    </a>
                </li>

            </s:if>
            <s:if test = "#role==2">
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="aboutUs" role="button">
                        About Us
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="viewCart" role="button">
                        <i class="fas fa-shopping-cart"></i><s:property value='%{sessionMap.get("cart").size()}' />
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="logout" role="button">
                        Sign-Out <i class="fas fa-sign-in-alt"></i>
                    </a>
                </li>
            </s:if>



        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->


    <!-- Content Wrapper. Contains page content -->

    <!-- ./wrapper -->

</s:else>

