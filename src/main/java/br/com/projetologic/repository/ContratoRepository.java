package br.com.projetologic.repository;
import br.com.projetologic.model.Contrato;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ContratoRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Contrato.class, finders = { @RooFinder(value = "findByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore", returnType = Contrato.class) })
public interface ContratoRepository extends DetachableJpaRepository<Contrato, Long>, ContratoRepositoryCustom {
}
