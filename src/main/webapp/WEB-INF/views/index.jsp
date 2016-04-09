<%-- 
    Document   : SID WEB
    Created on : 22/03/2016, 03:17:00 PM
    Author     : YVAN LOPEZ
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="es" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="es" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es" ng-app="sidApp">
    <head>
        <meta charset="utf-8" />
        <title>SID</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="SID web - Sistema de Información de Divemotor" name="description" />
        <meta content="DIVEMOTOR" name="author" />

        <link href="resources/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bower_components/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="resources/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" /> 
        <link href="resources/pages/css/error.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" /> 
        <link href="resources/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="resources/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />        
        <link href="resources/estilos/main.css" rel="stylesheet" />
        <!-- END PAGE LEVEL PLUGINS -->
        <link rel="shortcut icon" href="resources/favicon.ico" />
    </head>

    <body class="page-container-bg-solid page-boxed">
        <div class="page-header">
            <div class="page-header-top">
                <div class="container">
                    <div class="page-logo">
                        <a href="#home">                            
                            <img src="resources/img/logo.png" alt="logo" class="logo-default" />                            
                        </a>
                    </div>
                    <a href="javascript:;" class="menu-toggler"></a>
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <li class="dropdown dropdown-extended dropdown-notification dropdown-dark" id="header_notification_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-bell"></i>
                                    <span class="badge badge-default"></span>
                                </a>
                            </li>
                            <li class="droddown dropdown-separator">
                                <span class="separator"></span>
                            </li>
                            <li class="dropdown dropdown-user dropdown-dark">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <span class="username username-hide-mobile">acruz</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="icon-user"></i> Mis Datos </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;s">
                                            <i class="icon-calendar"></i> Mi Calendario </a>
                                    </li>

                                </ul>
                            </li>
                            <li class="dropdown dropdown-extended quick-sidebar-toggler" id="liSalir">
                                <span class="sr-only">Salir del Sistema</span>
                                <i class="icon-logout"></i>
                            </li>

                        </ul>
                    </div>

                </div>
            </div>
            <div class="page-header-menu">
                <div class="container">                   
                    <div class="hor-menu">
                        <ul class="nav navbar-nav">                           
                            <li class="menu-dropdown mega-menu-dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" 
                                   data-toggle="dropdown" role="button" 
                                   aria-haspopup="true" aria-expanded="false">
                                    Proformas
                                    <span class="caret"></span>                             
                                </a>
                                <ul class="dropdown-menu"> 
                                    <li><a href="#proforma/registrar/nuevo">Registrar nuevos</a></li>                            
                                    <li><a href="#proforma/registrar/semi-nuevo">Registrar semi-nuevos</a></li>
                                </ul>
                            </li>                  
                            <li class="menu-dropdown mega-menu-dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" 
                                   data-toggle="dropdown" role="button" 
                                   aria-haspopup="true" aria-expanded="false">
                                    Stock
                                    <span class="caret"></span>                             
                                </a>
                                <ul class="dropdown-menu"> 
                                    <li><a href="#venta/stock/nuevo">Consulta Stock Nuevo</a></li>                            
                                    <li><a href="#venta/stock/detalle">Consulta Stock Detallado </a></li>                                    
                                    <li><a href="#venta/stock/semi-nuevo">Consulta Stock Seminuevo</a></li>                            
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-container">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div class="container">                        
                        <div class="page-content-inner">
                            <div class="row">
                                <div class="col-md-12">

                                    <!--BEGIN: RENDERIZE CONTENT-->
                                    <div class="render-content" 
                                         id="dynamic-content"
                                         ng-view ></div>   
                                    <!--END RENDERIZE CONTENT-->

                                </div>
                            </div>
                        </div>
                        <!-- END PAGE CONTENT INNER -->
                    </div>
                </div>
                <!-- END PAGE CONTENT BODY -->
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
        </div>

        <div class="page-footer">
            <div class="container"> Copyright © 2016 Diveimport S.A.  Todos los derechos reservados.
            </div>
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
        <!--[if lt IE 9]>
<script src="../resources/global/plugins/respond.min.js"></script>
<script src="../resources/global/plugins/excanvas.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="resources/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script> 
        <script src="resources/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
        <script src="resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="resources/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script> 
        <script src="resources/global/scripts/app.min.js" type="text/javascript"></script>
        <script src="resources/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="resources/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>   
        <script src="resources/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="resources/pages/scripts/ui-blockui.min.js" type="text/javascript"></script>
        <script src="resources/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
        <script src="resources/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>           
        <script src="resources/pages/scripts/components-select2.min.js" type="text/javascript"></script>  
        <script src="resources/global/scripts/datatable.min.js" type="text/javascript"></script>
        <script src="resources/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="resources/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script> 
        <!--AngularJS-->
        <script src="resources/bower_components/angular/angular.js" type="text/javascript"></script>       
        <script src="resources/bower_components/angular-route/angular-route.js" type="text/javascript"></script>
        <script src="resources/bower_components/angular-resource/angular-resource.js" type="text/javascript"></script>
        <!-- ./AngularJS-->      
        <script src="resources/app/app.module.js" type="text/javascript"></script>
        <script src="resources/app/app.routes.js" type="text/javascript"></script>
        <script src="resources/app/components/index/indexController.js" type="text/javascript"></script>
        <script src="resources/app/components/venta/stock/detalle/stockDetalleController.js" type="text/javascript"></script>
        <script src="resources/app/components/venta/stock/detalle/stockDetalleServices.js" type="text/javascript"></script>
        <script src="resources/app/components/error/ErrorPageController.js" type="text/javascript"></script>
        <!--Main JS-->
        <script src="resources/global/scripts/main.js"></script>
        <!-- ./Main JS-->

        <!-- END THEME LAYOUT SCRIPTS -->       
    </body>
</html>
