package br.com.projetologic.service.api;
import br.com.projetologic.model.Veiculo;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = VeiculoService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Veiculo.class)
public interface VeiculoService extends EntityResolver<Veiculo, Long>, ValidatorService<Veiculo> {
}
