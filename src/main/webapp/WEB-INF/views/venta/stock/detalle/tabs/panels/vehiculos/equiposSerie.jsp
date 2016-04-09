<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdVehiculos"
               data-target="#collapseSeriesEq"
               href="javascript:;">Equipos serie</a>
        </h4>
    </div>
    <div id="collapseSeriesEq" class="panel-collapse in">
        <div class="panel-body">           
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Descripción</th>
                                <th>R</th>
                                <th>E</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="eqSerie in stockDetRslt.equiposSerie">
                                <td>{{eqSerie.codEquipoVeh}}</td>
                                <td>{{eqSerie.desEquipoVeh}}</td>
                                <td>{{eqSerie.indRevRecep}}</td>
                                <td>{{eqSerie.indActaEntrega}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>