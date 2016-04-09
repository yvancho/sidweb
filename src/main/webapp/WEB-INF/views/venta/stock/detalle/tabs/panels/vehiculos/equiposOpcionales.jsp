<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdVehiculos"
               data-target="#collapseOptEq"
               href="javascript:;">Equipos opcionales</a>
        </h4>
    </div>
    <div id="collapseOptEq" class="panel-collapse in">
        <div class="panel-body">           
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>R</th>
                                <th>E</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="opc in stockDetRslt.equiposOpcionales">
                                <td>{{opc.codEquipoVeh}}</td>
                                <td>{{opc.desEquipoVeh}}</td>
                                <td>{{opc.valEquipoVeh}}</td>
                                <td>{{opc.indRevRecep}}</td>
                                <td>{{opc.indActaEntrega}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>