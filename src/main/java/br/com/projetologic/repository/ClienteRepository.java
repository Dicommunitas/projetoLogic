package br.com.projetologic.repository;
import br.com.projetologic.model.Cliente;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ClienteRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Cliente.class, finders = { @RooFinder(value = "findByCnpjEquals", returnType = Cliente.class) })
public interface ClienteRepository extends DetachableJpaRepository<Cliente, Long>, ClienteRepositoryCustom {
}
