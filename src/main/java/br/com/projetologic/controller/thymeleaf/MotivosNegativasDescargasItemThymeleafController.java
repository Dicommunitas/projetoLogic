package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.MotivoNegativaDescarga;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = MotivosNegativasDescargasItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = MotivoNegativaDescarga.class, type = ControllerType.ITEM)
@RooThymeleaf
public class MotivosNegativasDescargasItemThymeleafController implements ConcurrencyManager<MotivoNegativaDescarga> {
}
