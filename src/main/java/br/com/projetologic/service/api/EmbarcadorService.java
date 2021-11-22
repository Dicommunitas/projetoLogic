package br.com.projetologic.service.api;
import br.com.projetologic.model.Embarcador;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = EmbarcadorService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Embarcador.class)
public interface EmbarcadorService extends EntityResolver<Embarcador, Long>, ValidatorService<Embarcador> {
}
