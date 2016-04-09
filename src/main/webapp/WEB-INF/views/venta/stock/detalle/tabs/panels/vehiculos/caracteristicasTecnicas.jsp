<div class="panel panel-default">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a class="accordion-toggle accordion-toggle-styled" 
               data-toggle="collapse" 
               data-parent="#acrdVehiculos"
               data-target="#collapseTechChar"
               href="javascript:;">Características técnicas</a>
        </h4>
    </div>
    <div id="collapseTechChar" class="panel-collapse in">
        <div class="panel-body">            
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-striped table-bordered table-advance table-hover">
                        <thead>
                            <tr>
                                <th>Cod.</th>
                                <th>Descripción</th>
                                <th>Valor Técninco</th>
                                <th>Valor Facturación</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="optChar in stockDetRslt.caracteristicas">
                                <td>{{optChar.codCaractVeh}}</td>
                                <td>{{optChar.desCaractVeh}}</td>
                                <td>{{optChar.valCaractVeh}}</td>
                                <td>{{optChar.valCaractVehFactura}}</td>                               
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>