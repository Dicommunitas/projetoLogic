package br.com.projetologic.service.api;
import br.com.projetologic.model.Cidade;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = CidadeService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Cidade.class)
public interface CidadeService extends EntityResolver<Cidade, Long>, ValidatorService<Cidade> {
}
