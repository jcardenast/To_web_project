<%-- 
    Document   : InicioJsp
    Created on : 23/06/2015, 09:10:13 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Inicio</title>
        <%@ include file="/MasterJsp.jsp" %>        
        <script type="text/javascript">
            function testfunc()
            {
                alert('hola');
            }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <span class="glyphicon glyphicon-folder-open"></span>
                            <h3 class="panel-title" style="display:inline-block">Categorias</h3>
                        </div>
                        <div class="panel-body padding15">

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <span class="glyphicon glyphicon-pushpin"></span>
                            <h3 class="panel-title" style="display:inline-block">Tags</h3>
                        </div>
                        <div class="panel-body padding15">

                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <span class="glyphicon glyphicon-globe"></span>
                            <h3 class="panel-title" style="display:inline-block">Ultimas Urls</h3>
                        </div>
                        <div class="panel-body padding15">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
