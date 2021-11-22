package br.com.projetologic.controller.json;
import br.com.projetologic.model.Usuario;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = UsuariosItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Usuario.class, type = ControllerType.ITEM)
@RooJSON
public class UsuariosItemJsonController {
}
