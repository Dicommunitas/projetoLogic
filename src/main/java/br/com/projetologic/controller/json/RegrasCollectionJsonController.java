package br.com.projetologic.controller.json;
import br.com.projetologic.model.Regra;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = RegrasCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Regra.class, type = ControllerType.COLLECTION)
@RooJSON
public class RegrasCollectionJsonController {
}
