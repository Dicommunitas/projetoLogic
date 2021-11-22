package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.MotivoPerdaAgenda;

/**
 * = MotivoPerdaAgendaRepositoryImpl
 *
 * Implementation of MotivoPerdaAgendaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = MotivoPerdaAgendaRepositoryCustom.class)
public class MotivoPerdaAgendaRepositoryImpl extends QueryDslRepositorySupportExt<MotivoPerdaAgenda> implements MotivoPerdaAgendaRepositoryCustom{

    /**
     * Default constructor
     */
    MotivoPerdaAgendaRepositoryImpl() {
        super(MotivoPerdaAgenda.class);
    }
}