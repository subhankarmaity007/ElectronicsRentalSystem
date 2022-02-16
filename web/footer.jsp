<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:set var = "role"  value = '%{sessionMap.get("roleId")}'/>

            <s:if test = "#role!=1&&#role!=2">
                
                    <jsp:include page="login.jsp"/>
               
            </s:if>
<s:else>
            <!-- Main Footer -->
            <style>body {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
}

.site-content {
  flex: 1;
}
</style>
            <footer class="main-footer">
                <strong>Copyright © 2022 <a href="#">Electronics Rental System</a>.</strong>
                All rights reserved.
                <div class="float-right d-none d-sm-inline-block">
                    <b>Version</b> 1.0.0
                </div>
            </footer>
            <div id="sidebar-overlay"></div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->
       


    </body><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration></html>
</s:else>                  