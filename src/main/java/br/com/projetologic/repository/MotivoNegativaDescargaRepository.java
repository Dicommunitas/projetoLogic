package br.com.projetologic.repository;
import br.com.projetologic.model.MotivoNegativaDescarga;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = MotivoNegativaDescargaRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = MotivoNegativaDescarga.class)
public interface MotivoNegativaDescargaRepository extends DetachableJpaRepository<MotivoNegativaDescarga, Long>, MotivoNegativaDescargaRepositoryCustom {
}
