package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Regra;

/**
 * = RegraRepositoryImpl
 *
 * Implementation of RegraRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = RegraRepositoryCustom.class)
public class RegraRepositoryImpl extends QueryDslRepositorySupportExt<Regra> implements RegraRepositoryCustom{

    /**
     * Default constructor
     */
    RegraRepositoryImpl() {
        super(Regra.class);
    }
}