package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Viagem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ViagensItemProdutosDevolvidosThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Viagem.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "produtosDevolvidos", views = { "show" })
@RooThymeleaf
public class ViagensItemProdutosDevolvidosThymeleafController {
}
