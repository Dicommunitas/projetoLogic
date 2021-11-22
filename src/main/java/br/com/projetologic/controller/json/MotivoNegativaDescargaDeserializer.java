package br.com.projetologic.controller.json;
import br.com.projetologic.model.MotivoNegativaDescarga;
import br.com.projetologic.service.api.MotivoNegativaDescargaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MotivoNegativaDescargaDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = MotivoNegativaDescarga.class)
public class MotivoNegativaDescargaDeserializer extends JsonObjectDeserializer<MotivoNegativaDescarga> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MotivoNegativaDescargaService motivoNegativaDescargaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param motivoNegativaDescargaService
     * @param conversionService
     */
    @Autowired
    public MotivoNegativaDescargaDeserializer(@Lazy MotivoNegativaDescargaService motivoNegativaDescargaService, ConversionService conversionService) {
        this.motivoNegativaDescargaService = motivoNegativaDescargaService;
        this.conversionService = conversionService;
    }
}
