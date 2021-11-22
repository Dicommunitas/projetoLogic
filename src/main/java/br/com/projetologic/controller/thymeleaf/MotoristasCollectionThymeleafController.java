package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Motorista;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = MotoristasCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Motorista.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class MotoristasCollectionThymeleafController {
}
