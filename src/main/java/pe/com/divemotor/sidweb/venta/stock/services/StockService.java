package pe.com.divemotor.sidweb.venta.stock.services;

import pe.com.divemotor.sidweb.venta.stock.dto.request.StockDetailTabReq;
import pe.com.divemotor.sidweb.venta.stock.dto.response.BusquedaResp;
import pe.com.divemotor.sidweb.venta.stock.dto.request.StockInitialLoadReq;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockDetailTabResp;
import pe.com.divemotor.sidweb.venta.stock.dto.response.StockInitialLoadResp;

/**
 *
 * @author YVAN LOPEZ <ylopez at divemotor.com.pe>
 */
public interface StockService {

    public StockInitialLoadResp getInitialLoad(String codUsuario) throws Exception;

    public BusquedaResp getStockDetailTable(StockInitialLoadReq req, 
            String codUsuario, String token, String numPag, String cantiRegPag) throws Exception;

    public StockDetailTabResp getStockDetailTab(StockDetailTabReq req, String codUsuario);

}
