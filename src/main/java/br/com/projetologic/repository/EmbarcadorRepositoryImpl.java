package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Embarcador;

/**
 * = EmbarcadorRepositoryImpl
 *
 * Implementation of EmbarcadorRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = EmbarcadorRepositoryCustom.class)
public class EmbarcadorRepositoryImpl extends QueryDslRepositorySupportExt<Embarcador> implements EmbarcadorRepositoryCustom{

    /**
     * Default constructor
     */
    EmbarcadorRepositoryImpl() {
        super(Embarcador.class);
    }
}