package br.com.projetologic.controller.json;
import br.com.projetologic.model.MotivoPerdaAgenda;
import br.com.projetologic.service.api.MotivoPerdaAgendaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MotivoPerdaAgendaDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = MotivoPerdaAgenda.class)
public class MotivoPerdaAgendaDeserializer extends JsonObjectDeserializer<MotivoPerdaAgenda> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MotivoPerdaAgendaService motivoPerdaAgendaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param motivoPerdaAgendaService
     * @param conversionService
     */
    @Autowired
    public MotivoPerdaAgendaDeserializer(@Lazy MotivoPerdaAgendaService motivoPerdaAgendaService, ConversionService conversionService) {
        this.motivoPerdaAgendaService = motivoPerdaAgendaService;
        this.conversionService = conversionService;
    }
}
