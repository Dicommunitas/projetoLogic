package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Cidade;

/**
 * = CidadeRepositoryImpl
 *
 * Implementation of CidadeRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = CidadeRepositoryCustom.class)
public class CidadeRepositoryImpl extends QueryDslRepositorySupportExt<Cidade> implements CidadeRepositoryCustom{

    /**
     * Default constructor
     */
    CidadeRepositoryImpl() {
        super(Cidade.class);
    }
}