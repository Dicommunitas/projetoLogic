package br.com.projetologic.controller.json;
import br.com.projetologic.model.Viagem;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ViagensItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Viagem.class, type = ControllerType.ITEM)
@RooJSON
public class ViagensItemJsonController {
}
