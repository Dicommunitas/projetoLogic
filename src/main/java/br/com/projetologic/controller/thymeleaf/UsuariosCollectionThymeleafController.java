package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Usuario;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = UsuariosCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Usuario.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class UsuariosCollectionThymeleafController {
}
