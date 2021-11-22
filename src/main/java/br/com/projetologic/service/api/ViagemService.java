package br.com.projetologic.service.api;
import br.com.projetologic.model.Viagem;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ViagemService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Viagem.class)
public interface ViagemService extends EntityResolver<Viagem, Long>, ValidatorService<Viagem> {
}
