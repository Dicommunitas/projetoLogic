package br.com.projetologic.controller.json;
import br.com.projetologic.model.Motorista;
import br.com.projetologic.service.api.MotoristaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MotoristaDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Motorista.class)
public class MotoristaDeserializer extends JsonObjectDeserializer<Motorista> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MotoristaService motoristaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param motoristaService
     * @param conversionService
     */
    @Autowired
    public MotoristaDeserializer(@Lazy MotoristaService motoristaService, ConversionService conversionService) {
        this.motoristaService = motoristaService;
        this.conversionService = conversionService;
    }
}
