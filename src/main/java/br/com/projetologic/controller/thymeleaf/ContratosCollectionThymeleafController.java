package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Contrato;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ContratosCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Contrato.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ContratosCollectionThymeleafController {
}
