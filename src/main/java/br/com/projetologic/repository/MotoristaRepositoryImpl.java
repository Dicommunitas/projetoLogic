package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Motorista;

/**
 * = MotoristaRepositoryImpl
 *
 * Implementation of MotoristaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = MotoristaRepositoryCustom.class)
public class MotoristaRepositoryImpl extends QueryDslRepositorySupportExt<Motorista> implements MotoristaRepositoryCustom{

    /**
     * Default constructor
     */
    MotoristaRepositoryImpl() {
        super(Motorista.class);
    }
}