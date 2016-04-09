<nav ng-show="showTable">
    <ul class="pagination">
        <li class="disabled">
            <a href="javascript:;" aria-label="Previous"
               ng-click="goFirst()">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li class="active" ng-click="goTo(num)"
            ng-repeat="num in pagesArr(totalPagesStckDt)">
            <a href="javascript:;">{{num}}<span class="sr-only">(current)</span>
            </a>
        </li>    
        <li>
            <a href="javascript:;" aria-label="Next"
               ng-click="goLast()">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>


<!--<div class="row" ng-show="showTable">
    <div class="col-md-12">
        <button class="btn btn-default" ng-click="goFirst()">
            <i class="fa fa-angle-double-left"></i>
        </button>

        <button class="btn btn-default" ng-click="goTo(num)" 
                ng-repeat="num in pagesArr(totalPagesStckDt)">{{num}}
        </button>

        <button class="btn btn-default" ng-click="goLast();">
            <i class="fa fa-angle-double-right"></i>
        </button>  
    </div>
</div>-->

<div class="table-responsive table-bordered table-hover" 
     id="tblStockResult" ng-show="showTable">

    <table class="table table-striped table-bordered table-advance table-hover"
           id="stockDetailTable">
        <thead>
            <tr>               
                <th class="textocentro">
                    <a class="puntero" ng-click="columna = 'baumuster';reverse = !reverse;">Modelo</a>
                </th>
                <th class="textocentro">
                    <a class="puntero" ng-click="columna = 'nomMarca';reverse = !reverse;">Marca</a> 
                </th>
                <th class="textocentro">
                    <a class="puntero" ng-click="columna = 'desClaseVeh';reverse = !reverse;">Clase</a>
                </th>
                <th class="textocentro">Familia</th> 
                <th class="textocentro">Filial</th> 
                <th class="textocentro">Configuracion</th> 
                <th class="textocentro">SKU</th> 
                <th class="textocentro">Color Ext/Int</th> 
                <th class="textocentro">Color</th> 
                <th class="textocentro">Nro. Pedido</th> 
                <th class="textocentro">Año Fabricación</th> 
                <th class="textocentro">Estado de Pedido</th> 
                <th class="textocentro">N° VIN</th> 
                <th class="textocentro">Ubicación</th> 
                <th class="textocentro">Almacen</th> 
                <th class="textocentro">Situación</th> 
                <th class="textocentro">Fecha Producción</th> 
                <th class="textocentro">Fecha Asignada</th> 
                <th class="textocentro">Llegada Embarque</th> 
                <th class="textocentro">Fecha Demo Operativo</th> 
                <th class="textocentro">Cliente Facturación</th> 
                <th class="textocentro">Nombre Cliente Reserva</th> 
                <th class="textocentro">Cod. Cliente Reserva</th> 
                <th class="textocentro">Área de Venta</th> 
                <th class="textocentro">Vendedor</th> 
                <th class="textocentro">Placa</th> 
                <th class="textocentro">Propietario Asignado</th> 
                <th class="textocentro">Nombre Vendedor</th> 
                <th colspan="3" class="textocentro">Observación</th> 
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="result in tblStockDetailResult.busqueda|orderBy:columna:reverse"
                ng-dblclick="setStockDetailRowSelected();">            	
                <td>{{result.baumuster}}</td>
                <td>{{result.nomMarca}}</td>
                <td>{{result.desClaseVeh}}</td>
                <td>{{result.desFamiliaVeh}}</td>
                <td>{{result.nomFilial}}</td>
                <td>{{result.desConfigVeh}}</td>
                <td>{{result.skuSap}}</td>
                <td>{{result.desColorInteriorVeh}}</td>
                <td>{{result.desColorFabricaVeh}}</td>
                <td>{{result.numPedidoVeh}}</td>
                <td>{{result.anoFabricacionVeh}}</td>
                <td>{{result.desEstadoPedido}}</td>
                <td>{{result.numWin}}</td>
                <td>{{result.desUbicaPedido}}</td>
                <td>{{result.nomAlmacenVeh}}</td>
                <td>{{result.desSituPedido}}</td>
                <td>{{result.fecProdPedidoVeh| date:'dd/MM/yyyy'}}</td>
                <td>{{result.fecAsigDefinitiva| date:'dd/MM/yyyy'}}</td>
                <td>{{result.fecEmbarque| date:'dd/MM/yyyy'}}</td>
                <td>{{result.fechaDemoOperativo| date:'dd/MM/yyyy'}}</td>
                <td>{{result.clienteFacturacion}}</td>
                <td>{{result.nomClienteReserva}}</td>
                <td>{{result.codClie}}</td>
                <td>{{result.desAreaVta}}</td>
                <td>{{result.vendedor}}</td>
                <td>{{result.numPlacaVeh}}</td>
                <td>{{result.proAsignado}}</td>
                <td>{{result.nomVendedor}}</td>
                <td>{{result.obsPedidoVeh}}</td>
                <td hidden>{{result.codCia}}</td>
                <td hidden>{{result.codProv}}</td>
            </tr>                              
        </tbody>
    </table>
</div>