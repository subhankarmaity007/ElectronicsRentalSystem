
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>






<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="adminIndex.jsp" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link">Contact</a>
        </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">






        <s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>
        <s:if test = "#role==1">
             this is admin
        </s:if>
             <s:if test = "#role==2">
             this is customer
        </s:if>


        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="logout" role="button">

                Sign-Out <i class="fas fa-sign-in-alt"></i>
            </a>
        </li>
    </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->


<!-- Content Wrapper. Contains page content -->

<!-- ./wrapper -->



