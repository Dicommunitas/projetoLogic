package br.com.projetologic.controller.json;
import br.com.projetologic.model.MotivoNegativaDiaria;
import br.com.projetologic.service.api.MotivoNegativaDiariaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = MotivoNegativaDiariaDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = MotivoNegativaDiaria.class)
public class MotivoNegativaDiariaDeserializer extends JsonObjectDeserializer<MotivoNegativaDiaria> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MotivoNegativaDiariaService motivoNegativaDiariaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param motivoNegativaDiariaService
     * @param conversionService
     */
    @Autowired
    public MotivoNegativaDiariaDeserializer(@Lazy MotivoNegativaDiariaService motivoNegativaDiariaService, ConversionService conversionService) {
        this.motivoNegativaDiariaService = motivoNegativaDiariaService;
        this.conversionService = conversionService;
    }
}
