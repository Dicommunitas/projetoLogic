package br.com.projetologic.controller.json;
import br.com.projetologic.model.ModeloConjunto;
import br.com.projetologic.service.api.ModeloConjuntoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ModeloConjuntoDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ModeloConjunto.class)
public class ModeloConjuntoDeserializer extends JsonObjectDeserializer<ModeloConjunto> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ModeloConjuntoService modeloConjuntoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param modeloConjuntoService
     * @param conversionService
     */
    @Autowired
    public ModeloConjuntoDeserializer(@Lazy ModeloConjuntoService modeloConjuntoService, ConversionService conversionService) {
        this.modeloConjuntoService = modeloConjuntoService;
        this.conversionService = conversionService;
    }
}
