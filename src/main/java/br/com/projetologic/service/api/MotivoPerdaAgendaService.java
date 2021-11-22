package br.com.projetologic.service.api;
import br.com.projetologic.model.MotivoPerdaAgenda;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = MotivoPerdaAgendaService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = MotivoPerdaAgenda.class)
public interface MotivoPerdaAgendaService extends EntityResolver<MotivoPerdaAgenda, Long>, ValidatorService<MotivoPerdaAgenda> {
}
