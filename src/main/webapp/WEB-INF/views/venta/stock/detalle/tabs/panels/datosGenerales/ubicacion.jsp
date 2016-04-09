<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseLocation"
               href="javascript:;">Ubicación</a>
        </h4>
    </div>
    <div id="collapseLocation" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Ubicación:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.desUbicaPedido"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Almacén:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.nomAlmacenVeh"></span>
                    </div>
                </div>                
            </div>            
        </div>
    </div>
</div>