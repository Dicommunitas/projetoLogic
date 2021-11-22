package br.com.projetologic.controller.json;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.service.api.VeiculoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = VeiculoDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Veiculo.class)
public class VeiculoDeserializer extends JsonObjectDeserializer<Veiculo> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private VeiculoService veiculoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param veiculoService
     * @param conversionService
     */
    @Autowired
    public VeiculoDeserializer(@Lazy VeiculoService veiculoService, ConversionService conversionService) {
        this.veiculoService = veiculoService;
        this.conversionService = conversionService;
    }
}
