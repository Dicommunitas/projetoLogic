package br.com.projetologic.controller.json;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.service.api.ViagemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ViagemDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Viagem.class)
public class ViagemDeserializer extends JsonObjectDeserializer<Viagem> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ViagemService viagemService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param viagemService
     * @param conversionService
     */
    @Autowired
    public ViagemDeserializer(@Lazy ViagemService viagemService, ConversionService conversionService) {
        this.viagemService = viagemService;
        this.conversionService = conversionService;
    }
}
