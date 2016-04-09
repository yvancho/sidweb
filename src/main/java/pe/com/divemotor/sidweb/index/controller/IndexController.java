package pe.com.divemotor.sidweb.index.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author YVAN LOPEZ <ylopez at divemotor.com.pe>
 */
@Controller
public class IndexController {

    private static final Log LOGGER = LogFactory.getLog(IndexController.class);
    
    /**
     * 
     * @param model
     * @return index
     */
    @RequestMapping("/")
    public String showWelcome(Model model) {
        model.addAttribute("admin", "SID Web");
        LOGGER.info("Bienvenidos");
        return "index";
    }

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping("/home")
    public String redirectIndex(Model model) {
        model.addAttribute("admin", "SID Web");
        LOGGER.info("Redireccion");
        return "index";
    }

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping("/indice")
    public String getIndice(Model model) {
        model.addAttribute("admin", "SID Web");
        LOGGER.info("Contenido del indice: Cargado");
        return "index/indexContent";
    }

}
