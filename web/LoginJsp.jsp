<%-- 
    Document   : LoginJsp
    Created on : 21/06/2015, 02:45:53 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social</title>
        <%@ include file="/MasterJsp.jsp" %>        
        <script type="text/javascript">
            function testfunc()
            {
                alert('hola');
            }
        </script>

    </head>
    <body>
        <form method="Post" action="LoginServlet">
            <div class="row center-block">
                <div class="container-login">

                    <div class="container">
                        <div class="row">
                            <div class="panel-heading">
                                <!--<span class="glyphicon glyphicon-log-in"></span>
                                <h3 class="panel-title" style="display:inline-block">Login</h3>-->
                            </div>
                            <div class="panel-body padding15">
                                <div class="col-lg-12">
                                    <div class="col-lg-12">
                                        <div class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="UserTxt" class="col-sm-4 control-label">Usuario</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="UserTxt" class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="PassTxt" class="col-sm-4 control-label">Password</label>
                                                <div class="col-sm-8">
                                                    <input name="PassTxt" class="form-control" type="password"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 text-center margen-bottom10">
                                    <button name="accion" class="btn btn-primary" value="Login">
                                        <span class="glyphicon glyphicon-ok"></span>&nbsp;Login
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-right">
                        <a href="${pageContext.servletContext.contextPath}/RegistrarJsp.jsp">Registrarse</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
