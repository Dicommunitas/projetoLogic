package br.com.projetologic.service.api;
import br.com.projetologic.model.Regra;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = RegraService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Regra.class)
public interface RegraService extends EntityResolver<Regra, Long>, ValidatorService<Regra> {
}
