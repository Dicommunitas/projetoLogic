package br.com.projetologic.controller.json;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.service.api.ContratoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ContratoDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Contrato.class)
public class ContratoDeserializer extends JsonObjectDeserializer<Contrato> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ContratoService contratoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param contratoService
     * @param conversionService
     */
    @Autowired
    public ContratoDeserializer(@Lazy ContratoService contratoService, ConversionService conversionService) {
        this.contratoService = contratoService;
        this.conversionService = conversionService;
    }
}
