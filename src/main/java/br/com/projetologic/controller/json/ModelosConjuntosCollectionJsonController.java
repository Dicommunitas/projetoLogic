package br.com.projetologic.controller.json;
import br.com.projetologic.model.ModeloConjunto;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ModelosConjuntosCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ModeloConjunto.class, type = ControllerType.COLLECTION)
@RooJSON
public class ModelosConjuntosCollectionJsonController {
}
