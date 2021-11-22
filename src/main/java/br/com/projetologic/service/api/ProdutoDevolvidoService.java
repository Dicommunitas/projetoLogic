package br.com.projetologic.service.api;
import br.com.projetologic.model.ProdutoDevolvido;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ProdutoDevolvidoService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = ProdutoDevolvido.class)
public interface ProdutoDevolvidoService extends EntityResolver<ProdutoDevolvido, Long>, ValidatorService<ProdutoDevolvido> {
}
