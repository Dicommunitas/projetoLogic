package br.com.projetologic.controller.json;
import br.com.projetologic.model.Veiculo;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = VeiculosCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Veiculo.class, type = ControllerType.COLLECTION)
@RooJSON
public class VeiculosCollectionJsonController {
}
