package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Embarcador;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = EmbarcadoresItemViagensThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Embarcador.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "viagens", views = { "show" })
@RooThymeleaf
public class EmbarcadoresItemViagensThymeleafController {
}
