package br.com.projetologic.repository;
import br.com.projetologic.model.Embarcador;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = EmbarcadorRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Embarcador.class, finders = { @RooFinder(value = "findByCnpjEquals", returnType = Embarcador.class) })
public interface EmbarcadorRepository extends DetachableJpaRepository<Embarcador, Long>, EmbarcadorRepositoryCustom {
}
