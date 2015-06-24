<%-- 
    Document   : AnadirJsp
    Created on : 23/06/2015, 09:10:46 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Anadir</title>
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
        </script>
    </head>
    <body>
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
                                    <button name="accion" class="btn btn-primary" value="Compartir" 
                                            onclick="funcionPopUp('modal1');
                                                    return false;">
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
                                    <button name="accion" class="btn btn-primary" value="Compartir">
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
                        <button name="accion" class="btn btn-success" value="Registrar">
                            <span class="glyphicon glyphicon-ok"></span>&nbsp;Registrar
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="modal1" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog l">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title">
                            Consultar Tags
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="informacion1" class="col-sm-4 control-label">Tags</label>
                                <div class="col-sm-6">
                                    <input name="TagsTxt" class="form-control" type="text"/>
                                </div>
                            </div>

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <span class="glyphicon glyphicon-pushpin"></span>
                                    <h3 class="panel-title" style="display:inline-block">Resultados</h3>
                                </div>
                                <div class="panel-body padding15">

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button name="accion" class="btn btn-danger" value="Retornar" data-dismiss="modal">
                            <span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Retornar
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Modal  -->

    </body>
</html>
