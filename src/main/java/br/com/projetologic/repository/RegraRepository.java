package br.com.projetologic.repository;
import br.com.projetologic.model.Regra;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = RegraRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Regra.class)
public interface RegraRepository extends DetachableJpaRepository<Regra, Long>, RegraRepositoryCustom {
}
