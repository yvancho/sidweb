<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseGuarantee"
               href="javascript:;">Garantía</a>
        </h4>
    </div>
    <div id="collapseGuarantee" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha entrega:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecEntregaClie"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Fecha inicio garantía:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecEntregaClie"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">KM Garantía:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numKmGarantiaVeh"></span>
                    </div>
                </div>
            </div>             
        </div>
    </div>
</div>