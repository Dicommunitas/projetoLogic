package br.com.projetologic.service.api;
import br.com.projetologic.model.MotivoNegativaDescarga;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = MotivoNegativaDescargaService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = MotivoNegativaDescarga.class)
public interface MotivoNegativaDescargaService extends EntityResolver<MotivoNegativaDescarga, Long>, ValidatorService<MotivoNegativaDescarga> {
}
