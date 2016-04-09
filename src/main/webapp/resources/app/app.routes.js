'use strict';

angular.module('sidApp').config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
                when('/', {
                    templateUrl: 'indice',
                    controller: 'IndexContentCtrl'
                }).
                when('/venta/stock/nuevo', {
                    templateUrl: 'venta/stock/nuevo',
                    controller: 'StockNuevoController'
                }).
                when('/venta/stock/detalle', {
                    templateUrl: 'venta/stock/detalle',
                    controller: 'StockDetalleController'
                }).
                when('/venta/stock/semi-nuevo', {
                    templateUrl: 'venta/stock/semiNuevo',
                    controller: 'StockSemiNuevoController'
                }).
                when('/404', {
                    templateUrl: 'error/404',
                    controller: 'ErrorPageController'
                })
                .otherwise({
                    redirectTo: '/'
                });
    }]);