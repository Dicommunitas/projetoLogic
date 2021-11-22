package br.com.projetologic.controller.json;
import br.com.projetologic.model.Embarcador;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = EmbarcadoresCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Embarcador.class, type = ControllerType.COLLECTION)
@RooJSON
public class EmbarcadoresCollectionJsonController {
}
