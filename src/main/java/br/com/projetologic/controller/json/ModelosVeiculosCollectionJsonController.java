package br.com.projetologic.controller.json;
import br.com.projetologic.model.ModeloVeiculo;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ModelosVeiculosCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = ModeloVeiculo.class, type = ControllerType.COLLECTION)
@RooJSON
public class ModelosVeiculosCollectionJsonController {
}
