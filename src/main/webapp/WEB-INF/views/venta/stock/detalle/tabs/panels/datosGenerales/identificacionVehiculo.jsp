<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseVehicleId"
               href="javascript:;">Identificación de vehículo</a>
        </h4>
    </div>
    <div id="collapseVehicleId" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Motor:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numMotorVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Chasis</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numChasis"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">K.M.:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numKmVeh"></span>
                    </div>
                </div>
            </div> 
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">VIN:</strong>
                    <div class="col-md-7">
                        <span ng-bind='stockDetRslt.codCmf + "-"
                                        + stockDetRslt.baumuster + "-"
                                        + stockDetRslt.fabrica + "-"
                                        + stockDetRslt.numCorre'></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Año:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.anoFabricacionVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">VON:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numVon"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>