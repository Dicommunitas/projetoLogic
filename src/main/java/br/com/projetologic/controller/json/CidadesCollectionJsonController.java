package br.com.projetologic.controller.json;
import br.com.projetologic.model.Cidade;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CidadesCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cidade.class, type = ControllerType.COLLECTION)
@RooJSON
public class CidadesCollectionJsonController {
}
