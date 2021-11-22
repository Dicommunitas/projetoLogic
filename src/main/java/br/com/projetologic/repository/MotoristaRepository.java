package br.com.projetologic.repository;
import br.com.projetologic.model.Motorista;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = MotoristaRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Motorista.class)
public interface MotoristaRepository extends DetachableJpaRepository<Motorista, Long>, MotoristaRepositoryCustom {
}
