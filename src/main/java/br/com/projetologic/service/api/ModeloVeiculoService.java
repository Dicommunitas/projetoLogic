package br.com.projetologic.service.api;
import br.com.projetologic.model.ModeloVeiculo;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ModeloVeiculoService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = ModeloVeiculo.class)
public interface ModeloVeiculoService extends EntityResolver<ModeloVeiculo, Long>, ValidatorService<ModeloVeiculo> {
}
