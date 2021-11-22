package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.MotivoNegativaDiaria;

/**
 * = MotivoNegativaDiariaRepositoryImpl
 *
 * Implementation of MotivoNegativaDiariaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = MotivoNegativaDiariaRepositoryCustom.class)
public class MotivoNegativaDiariaRepositoryImpl extends QueryDslRepositorySupportExt<MotivoNegativaDiaria> implements MotivoNegativaDiariaRepositoryCustom{

    /**
     * Default constructor
     */
    MotivoNegativaDiariaRepositoryImpl() {
        super(MotivoNegativaDiaria.class);
    }
}