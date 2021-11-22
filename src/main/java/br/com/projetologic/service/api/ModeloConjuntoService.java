package br.com.projetologic.service.api;
import br.com.projetologic.model.ModeloConjunto;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ModeloConjuntoService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = ModeloConjunto.class)
public interface ModeloConjuntoService extends EntityResolver<ModeloConjunto, Long>, ValidatorService<ModeloConjunto> {
}
