package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Veiculo;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = VeiculosCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Veiculo.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class VeiculosCollectionThymeleafController {
}
