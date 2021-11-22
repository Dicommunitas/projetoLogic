package br.com.projetologic.service.api;
import br.com.projetologic.model.Usuario;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = UsuarioService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Usuario.class)
public interface UsuarioService extends EntityResolver<Usuario, Long>, ValidatorService<Usuario> {
}
