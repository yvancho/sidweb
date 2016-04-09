var flagPanelFiltros = false;
$(function () {
    bootbox.setDefaults({
        locale: "es"
    });
    $("#btnFiltros").click(function (e) {
        e.preventDefault();
        if (!flagPanelFiltros) {
            flagPanelFiltros = true;
            $(this).text("MENOS FILTROS");
            $("#pnlFiltros").slideDown("slow", function () {});
        } else {
            $(this).text("MAS FILTROS");
            flagPanelFiltros = false;
            $("#pnlFiltros").slideUp("slow", function () {});
        }
    });
    $("#liSalir").click(function (e) {
        e.preventDefault();
        bootbox.confirm("¿Desea salir del sistema?", function (result) {
            if (result) {

            }
        });
    });
    $("#btnBuscar").click(function (e) {
        e.preventDefault();
        $("#pnlTabla").removeClass("ocultar");
    });

   
});