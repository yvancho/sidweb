<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseCreation"
               href="javascript:;">Creación</a>
        </h4>
    </div>
    <div id="collapseCreation" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Nombre:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.coUsuarioCreaReg"></span>
                    </div>
                </div>
                <div class="col-md-4">
                    <strong class="col-md-5">Fecha:</strong>
                    <div class="col-md-7">
                        <span ng-bind="stockDetRslt.fecCreaReg"></span>
                    </div>
                </div>                
            </div>             
        </div>
    </div>
</div>