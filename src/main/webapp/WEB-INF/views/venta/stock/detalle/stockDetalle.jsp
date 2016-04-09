<div class="portlet box grey-cascade" id="stockDetallePortlet">
    <div class="portlet-title">
        <div class="caption"><i class="fa fa-gift"></i>{{frameTitle}}</div>
        <div class="actions">
            <a href="javascript:;" class="collapse" data-original-title="" title=""> </a> 
            <a href="javascript:;" data-original-title="" title="" class="btn btn-default btn-sm iconos">
                <i class="fa fa-print"></i>Exportar               
            </a>
            <a href="javascript:;" data-original-title="" title="" class="btn btn-default btn-sm iconos"
               ng-click="resetForm();">
                <i class="fa fa-eraser "></i>Limpiar
            </a>           
        </div>
    </div>
    <div class="portlet-body form">
        <!-- BEGIN FORM-->
        <form class="form-horizontal" 
              name="frmSearchDetail"
              id="frmSearchDetail"
              novalidate
              >
            <div class="form-body">
                <div class="row">
                    <!-- START: Estado -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Estado</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2-multiple" 
                                        id="selectEstado" name="estados" data-placeholder="Filtrar por estados..." 
                                        multiple                                       
                                        ng-model="frmData.estados"
                                        ng-options="estado.codEstadoPedido as estado.desEstadoPedido for estado in cargaInicial.estados| orderBy:'desEstadoPedido'">                                  
                                </select>                                
                            </div>
                        </div>
                    </div>
                    <!-- END: Estado-->

                    <!-- START: Familia-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Familia</label>
                            <div class="col-md-8">                                                      
                                <select class="form-control select2 input-sm"                                                                
                                        name="familia"
                                        data-placeholder="Filtrar por familia..."
                                        ng-model="frmData.familia"
                                        ng-options="familia.codFamiliaVeh as familia.desFamiliaVeh for familia in cargaInicial.familias| orderBy:'desFamiliaVeh'">
                                    <option value=""></option>
                                </select>                                                        
                            </div>
                        </div>
                    </div>
                    <!-- END: Familia-->

                    <!-- START: Área de venta-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Área de venta</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" name="area"  
                                        data-placeholder="Filtrar por área de venta..."
                                        ng-model="frmData.area"
                                        ng-options="area.codAreaVta as area.desAreaVta for area in cargaInicial.areas| orderBy:'desAreaVta'">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Área de venta-->
                </div>

                <div class="row">
                    <!-- START: SKU--> 
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">SKU</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" 
                                        name="sku"
                                        data-placeholder="Filtrar por SKU..."
                                        ng-model="frmData.sku"
                                        ng-options="sku.skuSap as sku.skuSap for sku in cargaInicial.skus| orderBy:'skuSap'">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: SKU-->

                    <!-- START: Marca-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Marca</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" 
                                        name="marca" 
                                        data-placeholder="Filtrar por marca..."
                                        ng-model="frmData.marca"
                                        ng-options="marca.codMarca as marca.nomMarca for marca in cargaInicial.marcas| orderBy:'nomMarca'">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Marca-->  

                    <!-- START: Filial-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Filial</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" name="filial"
                                        data-placeholder="Filtrar por filial..."
                                        ng-model="frmData.filial"
                                        ng-options="filial.codFilial as filial.nomFilial for filial in cargaInicial.filiales| orderBy:'nomFilial'">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Filial-->

                </div>

                <div class="row">
                    <!-- START: Pedido-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Pedido</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control input-sm" 
                                       name="pedido"
                                       placeholder="Ingrese un pedido..."
                                       ng-model="frmData.pedido">
                            </div>
                        </div>
                    </div>
                    <!-- END: Pedido-->

                    <!-- START: Clase -->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Clase</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" name="clase"                                         
                                        data-placeholder="Filtrar por clase..."
                                        ng-model="frmData.clase"
                                        ng-options="clase.codClaseVeh as clase.desClaseVeh for clase in cargaInicial.clases| orderBy:'desClaseVeh'">
                                    <option value=""></option>
                                </select>                                                        
                            </div>
                        </div>
                    </div>
                    <!-- END: Clase-->

                    <!-- Modal Seller -->                    
                    <%@include file="modals/modalVendedor.jsp" %>
                    <!-- ./Modal Seller -->

                    <!-- START: Vendedor -->
                    <div class="col-md-4">
                        <div class="form-group">                                                   
                            <label class="control-label col-md-4">Vendedor</label>
                            <div class="col-md-8 no-pad-left">
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <input type="text" class="form-control input-sm" 
                                           name="vendedor"
                                           value="{{frmData.vendedor}}"
                                           placeholder="No."                                           
                                           ng-model="frmData.vendedor" ng-blur="searchSeller(frmData.vendedor)"/>
                                </div>

                                <div class="input-group col-md-8 col-sm-8 col-xs-8">
                                    <input type="text" class="form-control input-sm"
                                           placeholder="Nombre vendedor"
                                           value="{{sellerName}}"
                                           disabled /> 
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm" ng-click="setDataTable();"
                                                data-toggle="modal" data-target="#sellerModal">
                                            <span class="fa fa-search"></span>
                                        </button>
                                    </span>                                                        
                                </div>                                  
                            </div>
                        </div>
                    </div>
                    <!-- END: Vendedor-->
                </div>

                <div class="row">
                    <!-- START: Color--> 
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Color</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" name="color"
                                        data-placeholder="Filtrar por color..."
                                        ng-model="frmData.color"
                                        ng-options="color.codColorFabricaVeh as color.desColorFabricaVeh for color in cargaInicial.colores| orderBy:'desColorFabricaVeh'">                                   
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Color-->

                    <!-- START: Modelo-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Modelo</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2" name="modelo"   
                                        data-placeholder="Filtrar por modelo..."
                                        ng-model="frmData.modelo"
                                        ng-options="modelo.codBaumuster as modelo.desBaumuster for modelo in cargaInicial.baumusters| orderBy:'desBaumuster'">
                                    <option value=""></option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Modelo-->

                    <!-- START: Situación-->
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="control-label col-md-4">Situación</label>
                            <div class="col-md-8">
                                <select class="form-control input-sm select2-multiple" name="situaciones"
                                        data-placeholder="Filtrar por situaciones..."
                                        multiple                                       
                                        ng-model="frmData.situaciones"
                                        ng-options="situacion.codSituPedido as situacion.desSituPedido for situacion in cargaInicial.situaciones| orderBy:'desSituPedido'">
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- END: Situación-->
                </div> 

                <!-- START: Filters panel-->
                <div id="pnlFiltros" class="collapse">
                    <h4 class="form-section">Más Filtros</h4>
                    <div class="row">
                        <!-- START: Almacén-->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-4">Almacén</label>
                                <div class="col-md-8">
                                    <select class="form-control input-sm" name="almacen"
                                            data-placeholder="Filtrar por almacen..."
                                            ng-model="frmData.almacen"
                                            ng-options="alm.codAlmacenVeh as alm.nomAlmacenVeh for alm in cargaInicial.almacenes| orderBy:'nomAlmacenVeh'">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END: Almacén-->   

                        <!-- START: Compañia-->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-4">Compañía</label>
                                <div class="col-md-8">
                                    <select class="form-control input-sm select2" name="compania"
                                            data-placeholder="Filtrar por compañía..."
                                            ng-model="frmData.compania"
                                            ng-options="compania.noCia as compania.descripcion for compania in cargaInicial.companias| orderBy:'descripcion'">
                                        <option value=""></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END: Compañia-->

                        <!-- START: Ubicación-->
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="control-label col-md-4">Ubicación</label>
                                <div class="col-md-8">
                                    <select class="form-control input-sm select2" name="ubicacion"
                                            data-placeholder="Filtrar por ubicación..."
                                            ng-model="frmData.ubicacion"
                                            ng-options="ubi.codUbiPed as ubi.desUbiPed for ubi in cargaInicial.ubicaciones| orderBy:'desUbiPed'">
                                        <option value=""></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END: Ubicación-->
                    </div>
                    <!-- END: Ubicacion-->
                    <div class="row">

                        <!-- Modal Config -->
                        <%@include file="modals/modalConfig.jsp" %>                       
                        <!-- ./Modal Config -->

                        <!-- START: Config-->
                        <div class="col-md-4">
                            <div class="form-group">                                                   
                                <label class="control-label col-md-4">Configuración</label>
                                <div class="col-md-8">                                   
                                    <div class="input-group col-md-12">
                                        <input type="text" class="form-control input-sm" 
                                               placeholder="Configuración..."
                                               value="{{configDesc}}"
                                               disabled /> 
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-sm" ng-click="setConfigDataTable()"
                                                    data-toggle="modal" data-target="#configModal">
                                                <span class="fa fa-search"></span>
                                            </button>
                                        </span>                                                        
                                    </div>                                    
                                </div>
                            </div>
                        </div>
                        <!-- END: Config--> 
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">                                                   
                                <label class="control-label col-md-4"></label>
                                <div class="col-md-8 input-group">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control input-sm" 
                                               name="configuracion" disabled
                                               value="{{frmData.configuracion}}"
                                               ng-model="frmData.configuracion"                                               
                                               placeholder="SKU..."  />
                                    </div>                                    
                                    <div class="col-md-6">
                                        <input type="text" class="form-control input-sm" 
                                               value="{{codConfig}}"                                              
                                               placeholder="No. Config..." disabled />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- END: Filters panel-->


                <!-- START: Buttons-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group right">
                            <div class="col-md-12">                             
                                <button class="btn btn-principal btn-sm" 
                                        role="button" 
                                        ng-click="submitStockSearch()"
                                        >Buscar
                                </button>
                                <a class="btn btn-default btn-sm" id="btnMasFiltros" role="button" 
                                   data-toggle="collapse" data-target="#pnlFiltros"
                                   aria-expanded="false" aria-controls="pnlFiltros" 
                                   ng-click="changeFilterText()">
                                    + Filtros
                                </a>                                                        
                            </div>
                        </div>                                                                   
                    </div>  
                </div>
                <!-- END: Buttons-->

                <!--Modal Stock Detail-->
                <%@include file="modals/modalDetalleStock.jsp" %>
                <!--./Modal Stock Detail-->

                <!-- START: Table -->
                <%@include file="tables/tablaConsulta.jsp" %>
                <!-- END: Table -->
            </div>

        </form>
        <!-- END FORM-->

    </div>
</div>

