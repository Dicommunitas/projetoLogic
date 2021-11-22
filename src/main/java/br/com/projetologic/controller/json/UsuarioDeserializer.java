package br.com.projetologic.controller.json;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.service.api.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = UsuarioDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Usuario.class)
public class UsuarioDeserializer extends JsonObjectDeserializer<Usuario> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private UsuarioService usuarioService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param usuarioService
     * @param conversionService
     */
    @Autowired
    public UsuarioDeserializer(@Lazy UsuarioService usuarioService, ConversionService conversionService) {
        this.usuarioService = usuarioService;
        this.conversionService = conversionService;
    }
}
