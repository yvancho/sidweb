package pe.com.divemotor.sidweb.venta.stock.services.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import pe.com.divemotor.sidweb.util.message.UriWs;

import pe.com.divemotor.sidweb.venta.stock.controller.StockController;
import pe.com.divemotor.sidweb.venta.stock.dto.request.StockDetailTabReq;
import pe.com.divemotor.sidweb.venta.stock.dto.response.BusquedaResp;
import pe.com.divemotor.sidweb.venta.stock.dto.request.StockInitialLoadReq;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockDetailTabResp;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockInitialLoadResp;
import pe.com.divemotor.sidweb.venta.stock.services.StockService;

/**
 *
 * @author YVAN LOPEZ <ylopez at divemotor.com.pe>
 */
@Service("stockService")
public class StockServiceImpl implements StockService {

    @Value(value = "${" + UriWs.STOCK_INIT_LOAD_URI + "}")
    private String stockInitLoadUri;

    @Value(value = "${" + UriWs.STOCK_TABLE_RQST_URI + "}")
    private String stockTableDetailRqstUri;

    @Value(value = "${" + UriWs.STOCK_DETAIL_TAB_URI + "}")
    private String stockDetailTabUri;

    private static final Log LOGGER = LogFactory.getLog(StockController.class);

    @Override
    public StockInitialLoadResp getInitialLoad(String codUsuario) {
        RestTemplate restTemplate = new RestTemplate();
        StockInitialLoadResp jsonResponse = new StockInitialLoadResp();
        //headers
        HttpHeaders headers = new HttpHeaders();
        headers.add("codUsuario", codUsuario);
        headers.add("token", "abc123");
        HttpEntity<String> entity = new HttpEntity(null, headers);
        try {
            jsonResponse = restTemplate.exchange(stockInitLoadUri,
                    HttpMethod.GET,
                    entity,
                    StockInitialLoadResp.class)
                    .getBody();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            jsonResponse.setEstadoTrama(-1);
            return jsonResponse;
        }

        LOGGER.info("[ STOCK_INIT_LOAD Response ] : " + jsonResponse.toString());
        return jsonResponse;
    }

    @Override
    public BusquedaResp getStockDetailTable(StockInitialLoadReq req, String codUsuario,
            String token, String numPag, String cantiRegPag) throws Exception {
        RestTemplate restTemplate = new RestTemplate();
        BusquedaResp jsonResponse = new BusquedaResp();

        //headers
        HttpHeaders headers = new HttpHeaders();
        headers.add("codUsuario", codUsuario);
        headers.add("token", token);
        headers.add("numPag", (numPag != null) ? numPag : "1");
        headers.add("cantiRegPag", cantiRegPag);
        HttpEntity<StockInitialLoadReq> entity = new HttpEntity<StockInitialLoadReq>(req, headers);

        try {
            jsonResponse = restTemplate.exchange(stockTableDetailRqstUri,
                    HttpMethod.POST,
                    entity, BusquedaResp.class)
                    .getBody();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            jsonResponse.setEstadoTrama(-1);
            return jsonResponse;
        }
        jsonResponse.setEstadoTrama(1);
        LOGGER.info("[ STOCK_TABLE_LOAD Response ] : " + jsonResponse.toString());
        return jsonResponse;
    }

    @Override
    public StockDetailTabResp getStockDetailTab(StockDetailTabReq req, String codUsuario) {
        RestTemplate restTemplate = new RestTemplate();
        StockDetailTabResp resp = new StockDetailTabResp();

        //headers
        HttpHeaders headers = new HttpHeaders();
        headers.add("codUsuario", codUsuario);
        headers.add("token", "abc123");
        HttpEntity<StockDetailTabReq> entity = new HttpEntity<StockDetailTabReq>(req, headers);

        try {
            resp = restTemplate.exchange(stockDetailTabUri,
                    HttpMethod.POST,
                    entity, StockDetailTabResp.class)
                    .getBody();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            resp.setEstadoTrama(-1);
            return resp;
        }
        resp.setEstadoTrama(1);
        LOGGER.info("[ STOCK_TABS ] : " + resp.toString());
        return resp;
    }

}
