package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Cidade;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CidadesCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cidade.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class CidadesCollectionThymeleafController {
}
