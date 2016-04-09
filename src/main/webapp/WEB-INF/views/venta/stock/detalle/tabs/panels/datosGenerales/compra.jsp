<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseCompra"
               href="javascript:;">Compra</a>
        </h4>
    </div>
    <div id="collapseCompra" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Tipo Importación:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desTipoImportacion"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Adquisición:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desAdquisicion"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Origen:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.origen"></span>
                    </div>
                </div>
            </div> 
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha colocación:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecColocaPedidoVeh"></span>
                    </div>
                </div>
                <div class="col-md-4 col-md-offset-4">                                                                                                               
                    <div class="checkbox col-md-6 disabled">
                        <label>
                            <input type="checkbox" ng-checked="stockDetRslt.indEquipoEsp" disabled/>
                            Equipo Especial
                        </label>
                    </div>
                    <div class="checkbox col-md-6 disabled">
                        <label>
                            <input type="checkbox" ng-checked="stockDetRslt.indDiplomatico" disabled>
                            Diplomado
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>