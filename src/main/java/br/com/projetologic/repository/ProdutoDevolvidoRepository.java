package br.com.projetologic.repository;
import br.com.projetologic.model.ProdutoDevolvido;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ProdutoDevolvidoRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = ProdutoDevolvido.class)
public interface ProdutoDevolvidoRepository extends DetachableJpaRepository<ProdutoDevolvido, Long>, ProdutoDevolvidoRepositoryCustom {
}
