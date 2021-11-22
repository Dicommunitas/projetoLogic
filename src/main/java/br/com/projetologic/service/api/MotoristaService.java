package br.com.projetologic.service.api;
import br.com.projetologic.model.Motorista;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = MotoristaService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Motorista.class)
public interface MotoristaService extends EntityResolver<Motorista, Long>, ValidatorService<Motorista> {
}
