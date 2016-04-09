<div class="modal fade" id="sellerModal" tabindex="-1" role="dialog" aria-labelledby="sellerModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="sellerModalLabel">Seleccionar Vendedor</h4>
            </div>
            <div class="modal-body">
                <div table-responsive>
                    <table class="table table-striped table-bordered table-advance table-hover"
                           id="sellerTable">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="ven in cargaInicial.vendedores"                            
                                ng-dblclick="setSellerRowSelected();" >
                                <td>{{ven.vendedor}}</td>                                                                                                        
                                <td>{{ven.descripcion}}</td>                                                        
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!--./Table Seller-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>