package br.com.projetologic.repository;
import br.com.projetologic.model.Usuario;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = UsuarioRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Usuario.class, finders = { @RooFinder(value = "findByLogin", returnType = Usuario.class),
		@RooFinder(value = "findByCpfEquals", returnType = Usuario.class) })
public interface UsuarioRepository extends DetachableJpaRepository<Usuario, Long>, UsuarioRepositoryCustom {

	/**
	 * TODO Auto-generated method documentation
	 *
	 * @param login
	 * @return Usuario
	 */
	public abstract Usuario findByLogin(String login);
}
