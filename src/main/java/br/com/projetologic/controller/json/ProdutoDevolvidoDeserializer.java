package br.com.projetologic.controller.json;
import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.service.api.ProdutoDevolvidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ProdutoDevolvidoDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ProdutoDevolvido.class)
public class ProdutoDevolvidoDeserializer extends JsonObjectDeserializer<ProdutoDevolvido> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ProdutoDevolvidoService produtoDevolvidoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param produtoDevolvidoService
     * @param conversionService
     */
    @Autowired
    public ProdutoDevolvidoDeserializer(@Lazy ProdutoDevolvidoService produtoDevolvidoService, ConversionService conversionService) {
        this.produtoDevolvidoService = produtoDevolvidoService;
        this.conversionService = conversionService;
    }
}
