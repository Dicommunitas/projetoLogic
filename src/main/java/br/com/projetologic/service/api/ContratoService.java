package br.com.projetologic.service.api;
import br.com.projetologic.model.Contrato;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = ContratoService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Contrato.class)
public interface ContratoService extends EntityResolver<Contrato, Long>, ValidatorService<Contrato> {
}
