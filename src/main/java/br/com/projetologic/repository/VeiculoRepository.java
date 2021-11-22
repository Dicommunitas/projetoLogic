package br.com.projetologic.repository;
import br.com.projetologic.model.Veiculo;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = VeiculoRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Veiculo.class)
public interface VeiculoRepository extends DetachableJpaRepository<Veiculo, Long>, VeiculoRepositoryCustom {
}
