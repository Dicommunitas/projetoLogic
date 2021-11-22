package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Cidade;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CidadesItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cidade.class, type = ControllerType.ITEM)
@RooThymeleaf
public class CidadesItemThymeleafController implements ConcurrencyManager<Cidade> {
}
