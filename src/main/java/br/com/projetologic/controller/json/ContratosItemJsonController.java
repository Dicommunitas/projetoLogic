package br.com.projetologic.controller.json;
import br.com.projetologic.model.Contrato;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ContratosItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Contrato.class, type = ControllerType.ITEM)
@RooJSON
public class ContratosItemJsonController {
}
