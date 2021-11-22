package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Contrato;

/**
 * = ContratoRepositoryImpl
 *
 * Implementation of ContratoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ContratoRepositoryCustom.class)
public class ContratoRepositoryImpl extends QueryDslRepositorySupportExt<Contrato> implements ContratoRepositoryCustom{

    /**
     * Default constructor
     */
    ContratoRepositoryImpl() {
        super(Contrato.class);
    }
}