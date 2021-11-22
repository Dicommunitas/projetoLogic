package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Embarcador;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;


import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = EmbarcadoresItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Embarcador.class, type = ControllerType.ITEM)
@RooThymeleaf
public class EmbarcadoresItemThymeleafController implements ConcurrencyManager<Embarcador> {
}
