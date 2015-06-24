<%-- 
    Document   : BuscarJsp
    Created on : 23/06/2015, 09:10:31 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Busqueda</title>
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
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion0" class="col-sm-4 control-label">Descripcion</label>
                                <div class="col-sm-8">
                                    <input type="text" name="DescripTxt" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Site</label>
                                <div class="col-sm-8">
                                    <input name="SiteTxt" class="form-control" type="text"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Tags</label>
                                <div class="col-sm-8">
                                    <input name="TagsTxt" class="form-control" type="text"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Categorias</label>
                                <div class="col-sm-8">
                                    <input name="CategoriaTxt" class="form-control" type="text"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="col-lg-12 text-center margen-bottom10">
                        <button name="accion" class="btn btn-primary" value="Registrar">
                            <span class="glyphicon glyphicon-search"></span>&nbsp;Buscar
                        </button>
                    </div>
                    
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <span class="glyphicon glyphicon-globe"></span>
                                <h3 class="panel-title" style="display:inline-block">Resultados</h3>
                            </div>
                            <div class="panel-body padding15">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
