<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdGeneralInfo"
               data-target="#collapseSituation"
               href="javascript:;">Situación</a>
        </h4>
    </div>
    <div id="collapseSituation" class="panel-collapse in">
        <div class="panel-body">
            <div class="row form-group">
                <div class="col-md-4">                                                       
                    <strong class="col-md-5">Situación:</strong>
                    <div class="col-md-7">
                        <span ng-bind='stockDetRslt.desSituPedido'></span>
                    </div>
                </div>                
            </div> 
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>Cod.</th>
                                <th>Situación</th>
                                <th>Fecha</th>
                                <th>Observación</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="situation in stockDetRslt.situaciones">
                                <td>{{situation.numRegPedidoSitu}}</td>
                                <td>{{situation.desSituPedido}}</td>
                                <td>{{situation.fecSituPedido}}</td>
                                <td>{{situation.obsSituPedido}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>