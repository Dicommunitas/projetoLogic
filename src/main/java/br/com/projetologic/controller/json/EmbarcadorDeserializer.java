package br.com.projetologic.controller.json;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.service.api.EmbarcadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = EmbarcadorDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Embarcador.class)
public class EmbarcadorDeserializer extends JsonObjectDeserializer<Embarcador> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private EmbarcadorService embarcadorService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param embarcadorService
     * @param conversionService
     */
    @Autowired
    public EmbarcadorDeserializer(@Lazy EmbarcadorService embarcadorService, ConversionService conversionService) {
        this.embarcadorService = embarcadorService;
        this.conversionService = conversionService;
    }
}
