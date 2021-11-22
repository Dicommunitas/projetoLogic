package br.com.projetologic.repository;
import br.com.projetologic.model.MotivoNegativaDiaria;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = MotivoNegativaDiariaRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = MotivoNegativaDiaria.class)
public interface MotivoNegativaDiariaRepository extends DetachableJpaRepository<MotivoNegativaDiaria, Long>, MotivoNegativaDiariaRepositoryCustom {
}
