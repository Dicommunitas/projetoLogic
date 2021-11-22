package br.com.projetologic.controller.json;
import br.com.projetologic.model.ProdutoDevolvido;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ProdutosDevolvidosCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ProdutoDevolvido.class, type = ControllerType.COLLECTION)
@RooJSON
public class ProdutosDevolvidosCollectionJsonController {
}
