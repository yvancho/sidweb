package pe.com.divemotor.sidweb.venta.stock.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import pe.com.divemotor.sidweb.venta.stock.dto.request.StockDetailTabReq;
import pe.com.divemotor.sidweb.venta.stock.dto.request.StockInitialLoadReq;
import pe.com.divemotor.sidweb.venta.stock.dto.response.BusquedaResp;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockDetailTabResp;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockInitialLoadResp;

import pe.com.divemotor.sidweb.venta.stock.services.StockService;

@Controller
@RequestMapping("/venta/stock")
public class StockController {

    private static final Log LOGGER = LogFactory.getLog(StockController.class);

    @Autowired
    StockService stockService;

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping("/detalle")
    public String showStockNuevoDetalle(Model model) {
        model.addAttribute("admin", "SID Web");
        return "venta/stock/detalle/stockDetalle";
    }

    /**
     *
     * @param codUsuario
     * @param token
     * @return
     * @throws java.lang.Exception
     */
    @RequestMapping(value = "/getStockInitialLoad", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    ResponseEntity<StockInitialLoadResp> initLoad(@RequestHeader("codUsuario") String codUsuario,
            @RequestHeader("token") String token) throws Exception {
        StockInitialLoadResp resp = stockService.getInitialLoad(codUsuario);
        LOGGER.debug("[ CARGA INICIAL STOCK ] : " + resp.toString());
        if (resp.getEstadoTrama() == 1) {
            return ResponseEntity.ok(resp);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND)
                .header("estado", resp.getEstadoTrama().toString()).body(null);
    }

    /**
     *
     * @param req
     * @param codUsuario
     * @param token
     * @param numPag
     * @param cantiRegPag
     * @return
     * @throws java.lang.Exception
     */
    @RequestMapping(value = "/getStockDetailTable",
            method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
            produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    ResponseEntity<BusquedaResp>
            getStockDetailTable(
                    @RequestBody StockInitialLoadReq req,
                    @RequestHeader("codUsuario") String codUsuario,
                    @RequestHeader("token") String token,
                    @RequestHeader("numPag") String numPag,
                    @RequestHeader("cantiRegPag") String cantiRegPag) throws Exception {
        BusquedaResp resp = stockService.getStockDetailTable(req, codUsuario, token, numPag, cantiRegPag);
        LOGGER.debug("[LLENADO DE TABLA STOCK DETAIL]: " + resp.toString());
        if (resp.getEstadoTrama() == 1) {
            return ResponseEntity.ok(resp);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND)
                .header("estado", resp.getEstadoTrama().toString()).body(null);
    }

    /**
     *
     * @param req
     * @param codUsuario
     * @param token
     * @return
     * @throws java.lang.Exception
     */
    @RequestMapping(value = "/getStockDetailTab", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
            produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    ResponseEntity<StockDetailTabResp>
            getStockDetailTab(
                    @RequestBody StockDetailTabReq req,
                    @RequestHeader("codUsuario") String codUsuario,
                    @RequestHeader("token") String token) throws Exception {
        StockDetailTabResp resp = stockService.getStockDetailTab(req, codUsuario);
        LOGGER.debug("[LLENADO DE TABS STOCK DETAIL]: " + resp.toString());
        if (resp.getEstadoTrama() == 1) {
            return ResponseEntity.ok(resp);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND)
                .header("estado", resp.getEstadoTrama().toString()).body(null);
    }

}
