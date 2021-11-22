package br.com.projetologic.controller.json;
import br.com.projetologic.model.ModeloVeiculo;
import br.com.projetologic.service.api.ModeloVeiculoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ModeloVeiculoDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ModeloVeiculo.class)
public class ModeloVeiculoDeserializer extends JsonObjectDeserializer<ModeloVeiculo> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ModeloVeiculoService modeloVeiculoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param modeloVeiculoService
     * @param conversionService
     */
    @Autowired
    public ModeloVeiculoDeserializer(@Lazy ModeloVeiculoService modeloVeiculoService, ConversionService conversionService) {
        this.modeloVeiculoService = modeloVeiculoService;
        this.conversionService = conversionService;
    }
}
