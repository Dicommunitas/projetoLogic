package br.com.projetologic.controller.json;
import br.com.projetologic.model.Cidade;
import br.com.projetologic.service.api.CidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CidadeDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Cidade.class)
public class CidadeDeserializer extends JsonObjectDeserializer<Cidade> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CidadeService cidadeService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param cidadeService
     * @param conversionService
     */
    @Autowired
    public CidadeDeserializer(@Lazy CidadeService cidadeService, ConversionService conversionService) {
        this.cidadeService = cidadeService;
        this.conversionService = conversionService;
    }
}
