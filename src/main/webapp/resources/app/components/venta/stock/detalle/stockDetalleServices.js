'use strict';

/* Services */

angular.module('sidApp').factory('StockDetalleService', stockDetalleService);

function stockDetalleService($resource) {
    var urlInitLoad = 'venta/stock/getStockInitialLoad';
    var urlTableResult = 'venta/stock/getStockDetailTable';
    var urlStockDetailResult = 'venta/stock/getStockDetailTab';

    var self = {
        initLoad: function (codUsuario, token) {
            return $resource(urlInitLoad, {}, {
                query: {
                    method: 'GET',
                    isArray: false,
                    headers: {
                        'codUsuario': codUsuario,
                        'token': token
                    }
                }
            });
        },      
        getTableResult: function (headers) {              
            return $resource(
                    urlTableResult, {},
                    {
                        getTable: {
                            method: 'POST',
                            isArray: false,
                            headers: {
                                ContentType: 'application/json',
                                Accept: 'application/json',
                                codUsuario: headers.codUsuario,
                                token: headers.token,
                                numPag: headers.numPag,
                                cantiRegPag: 10
                            }
                        }
                    });
        },
       
        
        getTabsResult: function (codUsuario, token) {
            return $resource(urlStockDetailResult, {}, {
                getTabs: {
                    method: 'POST',
                    isArray: false,
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'codUsuario': codUsuario,
                        'token': token
                    }
                }
            });
        }

    };

    return self;
}
;