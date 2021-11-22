package br.com.projetologic.repository;
import br.com.projetologic.model.ModeloVeiculo;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ModeloVeiculoRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = ModeloVeiculo.class)
public interface ModeloVeiculoRepository extends DetachableJpaRepository<ModeloVeiculo, Long>, ModeloVeiculoRepositoryCustom {
}
