<%-- 
    Document   : RegistrarJsp
    Created on : 23/06/2015, 09:09:52 PM
    Author     : JESUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookmarking Social - Registro</title>
        <%@ include file="/MasterJsp.jsp" %>        
        <script type="text/javascript">
            function compareP()
            {
                var s = document.getElementById("PasswordTxt").value;
                var s1 = document.getElementById("PasswordTxt1").value;
                
                if(s === s1)
                {
                    document.getElementById('ErrorPass').style.display = 'none';
                }
                else
                {
                    document.getElementById('ErrorPass').style.display = 'inline';
                }
            }
        </script>
    </head>
    <body>
        <form method="Post" action="RegistrarServlet">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="UsuarioTxt" class="col-sm-4 control-label">Usuario</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="UsuarioTxt" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="PasswordTxt" class="col-sm-4 control-label">Password</label>
                                    <div class="col-sm-8">
                                        <input id="PasswordTxt" name="PasswordTxt" class="form-control" type="password"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="PasswordTxt1" class="col-sm-4 control-label">Password</label>
                                    <div class="col-sm-8">
                                        <input id="PasswordTxt1" name="PasswordTxt1" class="form-control" type="password" onblur="compareP(); return false;"/>
                                        <label class="msg-error-validate" id="ErrorPass" style="display: none" runat="server">
                                            <i class='glyphicon glyphicon-info-sign'></i> Password Incorrecto!</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="NombreTxt" class="col-sm-4 control-label">Nombre</label>
                                    <div class="col-sm-8">
                                        <input name="NombreTxt" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="ApellPaterTxt" class="col-sm-4 control-label">Apellido Paterno</label>
                                    <div class="col-sm-8">
                                        <input name="ApellPaterTxt" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="ApellMaterTxt" class="col-sm-4 control-label">Apellido Materno</label>
                                    <div class="col-sm-8">
                                        <input name="ApellMaterTxt" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="Emailtxt" class="col-sm-4 control-label">Email</label>
                                    <div class="col-sm-8">
                                        <input name="Emailtxt" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">                        </div>
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
        </form>
    </body>
</html>
