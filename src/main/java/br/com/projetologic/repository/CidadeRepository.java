package br.com.projetologic.repository;
import br.com.projetologic.model.Cidade;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = CidadeRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Cidade.class)
public interface CidadeRepository extends DetachableJpaRepository<Cidade, Long>, CidadeRepositoryCustom {
}
