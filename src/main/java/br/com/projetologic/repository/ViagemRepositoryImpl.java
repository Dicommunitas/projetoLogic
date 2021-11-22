package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Viagem;

/**
 * = ViagemRepositoryImpl
 *
 * Implementation of ViagemRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ViagemRepositoryCustom.class)
public class ViagemRepositoryImpl extends QueryDslRepositorySupportExt<Viagem> implements ViagemRepositoryCustom{

    /**
     * Default constructor
     */
    ViagemRepositoryImpl() {
        super(Viagem.class);
    }
}