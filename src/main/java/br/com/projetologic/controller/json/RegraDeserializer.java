package br.com.projetologic.controller.json;
import br.com.projetologic.model.Regra;
import br.com.projetologic.service.api.RegraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = RegraDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Regra.class)
public class RegraDeserializer extends JsonObjectDeserializer<Regra> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private RegraService regraService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param regraService
     * @param conversionService
     */
    @Autowired
    public RegraDeserializer(@Lazy RegraService regraService, ConversionService conversionService) {
        this.regraService = regraService;
        this.conversionService = conversionService;
    }
}
