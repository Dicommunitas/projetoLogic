package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.ProdutoDevolvido;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ProdutosDevolvidosItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ProdutoDevolvido.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ProdutosDevolvidosItemThymeleafController implements ConcurrencyManager<ProdutoDevolvido> {
}
