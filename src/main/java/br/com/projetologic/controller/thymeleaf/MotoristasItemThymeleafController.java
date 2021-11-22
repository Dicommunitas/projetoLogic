package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Motorista;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = MotoristasItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Motorista.class, type = ControllerType.ITEM)
@RooThymeleaf
public class MotoristasItemThymeleafController implements ConcurrencyManager<Motorista> {
}
