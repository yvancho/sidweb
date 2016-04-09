'use strict';

/* Detalle Controller */

angular.module('sidApp').controller('StockDetalleController', ['$scope', '$window', 'StockDetalleService',
    function ($scope, $window, StockDetalleService) {

        //Show-hide table content
        $scope.showTable = false;

        //Empezar Loader
        $.blockUI({
            message: '<img src="resources/img/preloader.gif" alt=""/>',
            css: {
                border: 'none',
                background: 'none'
            }
        });


        $scope.loadStockDetailTable = function () {
            $.blockUI({
                message: '<img src="resources/img/preloader.gif" alt=""/>',
                css: {
                    border: 'none',
                    background: 'none'
                }
            });
        };

        //Metodo 'load'(codUsuario,token) -> reemplazar cuando existan en session
        $scope.codUsuario = "ACRUZ";
        $scope.token = "abc123";

        //Carga inicial de los filtros
        $scope.cargaInicial = StockDetalleService
                .initLoad($scope.codUsuario, $scope.token).query({},
                function () {
                    $.unblockUI();
                }, function (error) {
            if (error.status === 404 || error.status === 400) {
                $.unblockUI();
                $window.location.href = '#404';
            }
        }
        );

        //Llenado de datos para consulta
        $scope.frameTitle = "Datos de consulta";
        $scope.frmData = {};

        // =========== PAGINATION ==========
        var defaultPage = {
            codUsuario: 'ACRUZ',
            token: 'abc123',
            numPag: 1
        };
        var stockDetailQuery = function (numPage) {
            defaultPage.numPag = numPage;
            $scope.loadStockDetailTable();
            $scope.showTable = false;
            StockDetalleService
                    .getTableResult(defaultPage)
                    .getTable({}, $scope.frmData,
                            function (data) {
                                //TODO validar cuando no viene resultados, mostrar aviso: nos se encontraron resultados
                                $scope.totalPagesStckDt = data.totalPaginacion;
                                $scope.totalRegsStckDt = data.totalRegistros;
                                $scope.tblStockDetailResult = data;
                                $.unblockUI();
                                $scope.showTable = true;
                            }, function (error) {
                        if (error.status === 404 || error.status === 400) {
                            $.unblockUI();
                            $window.location.href = '#404';
                        }
                    });
        };

        $scope.goFirst = function () {
            stockDetailQuery(1);
        };

        $scope.goTo = function (numPage) {
            stockDetailQuery(numPage);
        };

        $scope.goLast = function () {
            stockDetailQuery($scope.totalPagesStckDt);
        };

        $scope.pagesArr = function (num) {
            var arr = [];
            for (var i = 0; i < num; i++) {
                arr.push(i + 1);
            }
            return arr;
        };
        // -- Submit -- //
        $scope.submitStockSearch = function () {
            stockDetailQuery(1);
        };

        // ===== ./ Pagination =====

        //buscar vendedor
        $scope.searchSeller = function (codSeller) {
            $scope.sellerName = "";
            $scope.cargaInicial.vendedores.forEach(function (obj) {
                if (obj.vendedor === codSeller) {
                    $scope.sellerName = obj.descripcion;
                    return;
                }
                ;
            });
            return;
        };

        // Open-Close More filterss
        $scope.flagBtnFilter = false;
        $scope.changeFilterText = function () {
            var btnFilters = angular.element(document).find("#btnMasFiltros");
            if (!$scope.flagBtnFilter) {
                $scope.flagBtnFilter = true;
                btnFilters.text("- Filtros");
            } else {
                btnFilters.text("+ Filtros");
                $scope.flagBtnFilter = false;
            }
        };

        //Init. DataTable Plugin for tables
        //Seller Table        
        $scope.setDataTable = function () {
            $('#sellerTable').DataTable({
                language: {
                    url: "resources/global/plugins/datatables/dataTables.spanish.lang.json"
                },
                lengthChange: false,
                searching: true,
                ordering: false,
                destroy: true
            });
        };

        $scope.setSellerRowSelected = function () {
            $scope.rowSellerSelected = this.ven;
            $scope.frmData.vendedor = $scope.rowSellerSelected.vendedor;
            $scope.sellerName = $scope.rowSellerSelected.descripcion;
            $('#sellerModal').modal('hide');
        };

        $scope.setSellerRowClass = function ($event) {
//            var el = event.target;
//            if ($(el).hasClass('selected')) {
//                $(el).removeClass('selected');
//            } else {
//                $('#sellerTable td.selected').removeClass('selected');
//                $(el).addClass('selected');
//            }
        };

        //Config Table
        $scope.setConfigDataTable = function () {
            $('#configTable').DataTable({
                "language": {
                    "url": "resources/global/plugins/datatables/dataTables.spanish.lang.json"
                },
                "destroy": true
            });
        };

        $scope.setConfRowSelected = function () {
            $scope.rowConfSelected = this.conf;
            $scope.codConfig = $scope.rowConfSelected.codConfigVeh;
            $scope.configDesc = $scope.rowConfSelected.desConfigVeh;
            $scope.frmData.configuracion = $scope.rowConfSelected.skuSap;
            $('#configModal').modal('hide');
        };

        $scope.setConfRowClass = function ($event) {
//            var el = event.target;
//            if ($(el).hasClass('selected')) {
//                $(el).removeClass('selected');
//            } else {
//                $('#configTable td.selected').removeClass('selected');
//                $(el).addClass('selected');
//            }
        };


        $scope.setStockDetailRowSelected = function () {
            $scope.loadStockDetailTable();
            $scope.rowStockDetailSelected = this.result;

            var data = {
                "compania": $scope.rowStockDetailSelected.codCia,
                "proveedor": $scope.rowStockDetailSelected.codProv,
                "pedido": $scope.rowStockDetailSelected.numPedidoVeh
            };

            $scope.stockDetRslt = StockDetalleService
                    .getTabsResult($scope.codUsuario, $scope.token)
                    .getTabs({}, data, function () {
                        $.unblockUI();
                        $('#stockDetailModal').modal('show');
                    }, function (error) {
                        if (error.status === 404) {
                            $.unblockUI();
                            $window.location.href = '#404';
                        }
                    });
        };

        //Init. Select2 Plugin for selects-options
        $('select').select2({
            allowClear: true
        });
        $('select[multiple]').select2({
            allowClear: false
        });

        //Limpia form y tablas
        $scope.clearForm = function () {
            $('select').select2().val(null).trigger("change");
            $scope.frmSearchDetail.$setPristine();
        };

        $scope.resetForm = function () {
            $scope.frmSearchDetail = {};
        };

    }]);