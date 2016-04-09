<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdVehiculos"
               data-target="#collapseVehiclesInfo"
               href="javascript:;">Datos del vehículo</a>
        </h4>
    </div>
    <div id="collapseVehiclesInfo" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">SKU:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.skuSap"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Familia:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desFamiliaVeh"></span>
                    </div>
                </div>    
                <div class="col-md-4">
                    <strong class="col-md-5">Clase:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desClaseVeh"></span>
                    </div>
                </div>
            </div>

            <!--Marca-->
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Marca:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.nomMarca"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Baumaster</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desBaumuster"></span>
                    </div>
                </div>    
                <div class="col-md-4">
                    <strong class="col-md-5">Configuración:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desConfigVeh"></span>
                    </div>
                </div>
            </div>

            <!--Tipo Vehiculo-->
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Tipo vehículo:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desTipoVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Tipo pintura</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desTipoPinturaVeh"></span>
                    </div>
                </div>    
                <div class="col-md-4">
                    <strong class="col-md-5">Cód. Color:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.colorTexto"></span>
                    </div>
                </div>
            </div>

            <!--Tipo Vehiculo-->
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Tapizado</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desTipoTapizVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Color tapiz</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desTapizVeh"></span>
                    </div>
                </div>    
                <div class="col-md-4">
                    <strong class="col-md-5">Sup. Pintura:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desSuperPinturaVeh"></span>
                    </div>
                </div>
            </div>

            <!--Tipo Vehiculo-->
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fabricante:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.nomProvOrigenVeh"></span>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</div>