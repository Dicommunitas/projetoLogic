package br.com.projetologic.repository;
import br.com.projetologic.model.ModeloConjunto;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ModeloConjuntoRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = ModeloConjunto.class)
public interface ModeloConjuntoRepository extends DetachableJpaRepository<ModeloConjunto, Long>, ModeloConjuntoRepositoryCustom {
}
