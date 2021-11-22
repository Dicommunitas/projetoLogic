package br.com.projetologic.repository;
import br.com.projetologic.model.Viagem;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ViagemRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Viagem.class, finders = { @RooFinder(value = "findByInicioRealAfter", returnType = Viagem.class), @RooFinder(value = "findByDevolucaoEquals", returnType = Viagem.class), @RooFinder(value = "findByFimViagemNull", returnType = Viagem.class) })
public interface ViagemRepository extends DetachableJpaRepository<Viagem, Long>, ViagemRepositoryCustom {
}
