<%-- 
    Document   : ModificarJsp
    Created on : 23/06/2015, 09:11:01 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Modificar</title>
        <%@ include file="/MasterJsp.jsp" %>        
        <script type="text/javascript">
            function testfunc()
            {
                alert('hola');
            }
        </script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">Bienvenido</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.servletContext.contextPath}/InicioJsp.jsp""> <i class='glyphicon glyphicon-home'></i> Inicio <span class="sr-only">(current)</span></a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/AnadirJsp.jsp"> <i class='glyphicon glyphicon-file'></i> Nueva Url </a></li>
                        <li class="active"><a href="#"> <i class='glyphicon glyphicon-edit'></i> Editar Url </a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/BuscarJsp.jsp"> <i class='glyphicon glyphicon-search'></i> Buscar Url </a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/CategoriasJsp.jsp"> <i class='glyphicon glyphicon-folder-open'></i> Categorias Url </a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/TagsJsp.jsp"> <i class='glyphicon glyphicon-pushpin'></i> Tags Url </a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/LoginJsp.jsp"> <i class='glyphicon glyphicon-off'></i> Salir </a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <br/>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion0" class="col-sm-4 control-label">Url</label>
                                <div class="col-sm-8">
                                    <input type="text" name="UrlTxt" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Descripci&oacute;n</label>
                                <div class="col-sm-8">
                                    <textarea name="Descripcion" style="resize: none;" class="form-control"
                                              rows="4"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Tags</label>
                                <div class="col-sm-6">
                                    <input name="TagsTxt" class="form-control" type="text"/>
                                </div>
                                <div class="col-sm-2">
                                    <button name="accion" class="btn btn-primary" value="Tags">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Categorias</label>
                                <div class="col-sm-6">
                                    <input name="CategoriaTxt" class="form-control"/>
                                </div>
                                <div class="col-sm-2">
                                    <button name="accion" class="btn btn-primary" value="Categoria">
                                        <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <span class="glyphicon glyphicon-share"></span>
                                <h3 class="panel-title" style="display:inline-block">Compartir</h3>
                            </div>
                            <div class="panel-body padding15">
                                <button name="accion" class="btn btn-primary" value="Compartir">
                                    <span class="glyphicon glyphicon-user"></span>&nbsp;Usuario
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6"></div>
                    <div class="col-lg-12 text-right margen-bottom10">
                        <button name="accion" class="btn btn-danger" value="Retornar">
                            <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Retornar
                        </button>
                        <button name="accion" class="btn btn-success" value="Modificar">
                            <span class="glyphicon glyphicon-edit"></span>&nbsp;Modificar
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
