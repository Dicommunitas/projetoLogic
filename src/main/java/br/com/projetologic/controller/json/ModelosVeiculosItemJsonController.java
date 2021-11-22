package br.com.projetologic.controller.json;
import br.com.projetologic.model.ModeloVeiculo;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ModelosVeiculosItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ModeloVeiculo.class, type = ControllerType.ITEM)
@RooJSON
public class ModelosVeiculosItemJsonController {
}
