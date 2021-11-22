package br.com.projetologic.controller.json;
import br.com.projetologic.model.Cliente;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ClientesCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cliente.class, type = ControllerType.COLLECTION)
@RooJSON
public class ClientesCollectionJsonController {
}
