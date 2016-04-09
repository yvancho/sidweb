<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseGenerals"
               href="javascript:;">Generales</a>
        </h4>
    </div>
    <div id="collapseGenerals" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha salida producción:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecProdSoliPedidoVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Fecha de producción:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecProdPedidoVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Inicio garantía</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecIniGarantiaVeh"></span>
                    </div>
                </div>
            </div> 
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha ingreso carr.:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecCarro"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha salida carr.:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecSalCarro"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Fecha ingreso patio.:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecIngPatio"></span>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Carrocero:</strong>
                    <div class="col-md-7">
                        <span ng-bind='(stockDetRslt.codProvCarro !== null && stockDetRslt.nomProvCarro !== null)
                                        ? stockDetRslt.codProvCarro + "-" + stockDetRslt.nomProvCarro : "---"' ></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Sem. Producción:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numSemProdPedVeh"></span>
                    </div>
                </div>
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">VTC:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.numVtc"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>