package br.com.projetologic.controller.json;
import br.com.projetologic.model.Veiculo;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = VeiculosItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Veiculo.class, type = ControllerType.ITEM)
@RooJSON
public class VeiculosItemJsonController {
}
