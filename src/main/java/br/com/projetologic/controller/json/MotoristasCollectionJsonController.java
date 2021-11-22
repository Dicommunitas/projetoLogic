package br.com.projetologic.controller.json;
import br.com.projetologic.model.Motorista;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = MotoristasCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Motorista.class, type = ControllerType.COLLECTION)
@RooJSON
public class MotoristasCollectionJsonController {
}
