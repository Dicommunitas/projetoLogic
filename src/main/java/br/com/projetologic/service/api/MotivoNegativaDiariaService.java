package br.com.projetologic.service.api;
import br.com.projetologic.model.MotivoNegativaDiaria;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = MotivoNegativaDiariaService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = MotivoNegativaDiaria.class)
public interface MotivoNegativaDiariaService extends EntityResolver<MotivoNegativaDiaria, Long>, ValidatorService<MotivoNegativaDiaria> {
}
