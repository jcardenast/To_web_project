<%-- 
    Document   : CategoriasJsp
    Created on : 23/06/2015, 09:11:19 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Datos.CategoriaDato"%>
<%@page import="Logica.Categoria"%>
<%@page import="java.util.ArrayList;"%>

<%
    ArrayList<CategoriaDato> lista;
    String user = (String)session.getAttribute("User_ID");
    Object tmp = session.getAttribute("CategoriasLista");
    if(tmp != null) { lista = (ArrayList<CategoriaDato>)tmp;}
    else { Categoria cat = new Categoria(); lista = cat.get_Categorias(user);}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Categorias</title>
        <%@ include file="/MasterJsp.jsp" %>        
        <script type="text/javascript">
            function funcionPopUp(idPopup) {
                $('#' + idPopup).modal({
                    keyboard: false, //cancela tecla ESC
                    backdrop: 'static'//cancela click's fuera del modal(PopUp)
                });
            }
            function funcionCerrarPopUp(idPopup) {
                $('#' + idPopup).modal('hide');
            }
            function modificar(id, value)
            {
                document.getElementById("CatModTxt").value = value;
                document.getElementById("CatModID").value = id;
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
                        <li><a href="${pageContext.servletContext.contextPath}/ModificarJsp.jsp"> <i class='glyphicon glyphicon-edit'></i> Editar Url </a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/BuscarJsp.jsp"> <i class='glyphicon glyphicon-search'></i> Buscar Url </a></li>
                        <li class="active"><a href="#"> <i class='glyphicon glyphicon-folder-open'></i> Categorias Url </a></li>
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
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <span class="glyphicon glyphicon-folder-open"></span>
                            <h3 class="panel-title" style="display:inline-block">Categorias</h3>
                        </div>
                        <div class="panel-body padding15">
                            <%if(lista.size() > 0){ %>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <tr>
                                        <td><b>ID</b></td>
                                        <td><b>Categoria</b></td>
                                        <td><b>Editar</b></td>
                                    </tr>
                                    <% for (CategoriaDato c : lista) { %>
                                        <tr>
                                                <td><%= c.getId()%></td>
                                                <td><%= c.getNombre()%></td>
                                                <td onclick="return modificar(<%= c.getId()%>, '<%= c.getNombre()%>')" style="cursor: pointer;">
                                                    <span class="glyphicon glyphicon-edit"></span>
                                                </td>
                                        </tr>
                                    <% }%>
                                </table>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="display:inline-block">Añadir</h3>
                        </div>
                        <div class="panel-body padding15">
                            <form method="Post" action="CategoriaServlet">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="CatNewTxt" class="col-sm-4 control-label">Nombre</label>
                                        <div class="col-sm-6">
                                            <input name="CatNewTxt" class="form-control" type="text"/>
                                        </div>
                                    </div>
                                </div>
                                <button name="accion" class="btn btn-success" value="Anadir">
                                    <span class="glyphicon glyphicon-ok"></span>&nbsp;Añadir
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="display:inline-block">Modificar</h3>
                        </div>
                        <div class="panel-body padding15">
                            <form method="Post" action="CategoriaServlet">
                                <div class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label for="CatNewTxt" class="col-sm-4 control-label">Nombre</label>
                                            <div class="col-sm-6">
                                                <input name="CatModTxt" id="CatModTxt" class="form-control" type="text"/>
                                                <input name="CatModID" id="CatModID" style="display: none" type="text"/>
                                            </div>
                                        </div>
                                    </div>
                                <button name="accion" class="btn btn-primary" value="Modificar">
                                    <span class="glyphicon glyphicon-edit"></span>&nbsp;Modificar
                                </button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>
