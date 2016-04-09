/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.divemotor.sidweb.error.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author YVAN LOPEZ
 */
@Controller
@RequestMapping("/error")
public class ErrorController {

    private static final Log LOGGER = LogFactory.getLog(ErrorController.class);

    @RequestMapping("/404")
    public String redirectIndex(Model model) {
        //model.addAttribute("admin", "SID Web");
        LOGGER.info("404 page not found");
        return "error/404";
    }
}
