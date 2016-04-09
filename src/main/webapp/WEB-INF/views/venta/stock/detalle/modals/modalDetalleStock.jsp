<div class="modal fade" id="stockDetailModal" tabindex="-1" role="dialog" aria-labelledby="stockDetailModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <!--Modal Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="modal-title" id="stockDetailModalLabel">Datos de Pedido</h4>
                    </div>
                    <div class="col-md-4">
                        <strong class="col-md-5">Estado:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.desEstadoPedido"></span>
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal Body-->
            <div class="modal-body">    


                <!--Compania-->
                <div class="row form-group">
                    <div class="col-md-4">
                        <strong class="col-md-5">Compañía:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.nomCia"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <strong class="col-md-5">Pedido:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.numPedVeh"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <strong class="col-md-5">Filial:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.nomFilial"></span>
                        </div>
                    </div>
                </div>

                <!-- Proveedor-->
                <div class="row form-group">
                    <div class="col-md-4">
                        <strong class="col-md-5">Proveedor:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.codProv + '-' + stockDetRslt.nomProv"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <strong class="col-md-5">Área venta:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.desAreaVta"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <strong class="col-md-5">Modelo:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.baumuster"></span>
                        </div>
                    </div>
                </div>

                <!-- Vehi. SAP-->
                <div class="row form-group">
                    <div class="col-md-4">
                        <strong class="col-md-5">Vehí. SAP:</strong>
                        <div class="col-md-7">
                            <span ng-bind="stockDetRslt.vhcleSap"></span>
                        </div>
                    </div>                    
                </div>

                <!-- TABS CONTENT-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable-line">
                            <ul class="nav nav-tabs ">
                                <li class="active">
                                    <a href="javascript:;" data-target="#tabGeneralInfo" 
                                       data-toggle="tab" aria-expanded="true">
                                        Datos generales</a>
                                </li>
                                <li class="">
                                    <a href="javascript:;" data-target="#tabVehicles"  
                                       data-toggle="tab" aria-expanded="false">Vehículos</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabGeneralInfo">
                                <%@include file="../tabs/tabDatosGenerales.jsp" %>
                            </div>
                            <div class="tab-pane" id="tabVehicles">
                                <%@include file="../tabs/tabVehiculos.jsp" %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal Footer-->
            <div class="modal-footer">
                <button type="button" class="btn btn-principal" data-dismiss="modal">Volver</button>                
            </div>                    
        </div>
    </div>
</div>