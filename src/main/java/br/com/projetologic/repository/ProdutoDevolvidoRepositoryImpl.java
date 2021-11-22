package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.ProdutoDevolvido;

/**
 * = ProdutoDevolvidoRepositoryImpl
 *
 * Implementation of ProdutoDevolvidoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ProdutoDevolvidoRepositoryCustom.class)
public class ProdutoDevolvidoRepositoryImpl extends QueryDslRepositorySupportExt<ProdutoDevolvido> implements ProdutoDevolvidoRepositoryCustom{

    /**
     * Default constructor
     */
    ProdutoDevolvidoRepositoryImpl() {
        super(ProdutoDevolvido.class);
    }
}