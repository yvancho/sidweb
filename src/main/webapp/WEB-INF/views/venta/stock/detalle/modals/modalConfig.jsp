<div class="modal fade" id="configModal" tabindex="-1" role="dialog" aria-labelledby="modalConfigLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="modalConfigLabel">Seleccionar Configuración</h4>
            </div>
            <div class="modal-body">                                    
                <!--Table Seller-->
                <table class="table-responsive table-bordered table-hover"
                       id="configTable">
                    <thead>
                        <tr>
                            <th>Descripción</th>
                            <th>Cod. Config</th>
                            <th>SKU</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="conf in cargaInicial.configuraciones"
                            ng-click="setConfRowClass(this);"
                            ng-dblclick="setConfRowSelected();" >
                            <td>{{conf.desConfigVeh}}</td>           
                            <td>{{conf.codConfigVeh}}</td>                                                             
                            <td>{{conf.skuSap}}</td> 
                        </tr>
                    </tbody>
                </table>
                <!--./Table Seller-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>