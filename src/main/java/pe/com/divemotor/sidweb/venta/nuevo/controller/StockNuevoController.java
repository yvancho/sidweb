package pe.com.divemotor.sidweb.venta.nuevo.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/venta/stock")
public class StockNuevoController {

    private static final Log LOGGER = LogFactory.getLog(StockNuevoController.class);

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping("/nuevo")
    public String showStockNuevoDetalle(Model model) {
        model.addAttribute("admin", "SID Web");
        return "venta/stock/nuevo/nuevo";
    }

}
