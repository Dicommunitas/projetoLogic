package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.ModeloConjunto;

/**
 * = ModeloConjuntoRepositoryImpl
 *
 * Implementation of ModeloConjuntoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ModeloConjuntoRepositoryCustom.class)
public class ModeloConjuntoRepositoryImpl extends QueryDslRepositorySupportExt<ModeloConjunto> implements ModeloConjuntoRepositoryCustom{

    /**
     * Default constructor
     */
    ModeloConjuntoRepositoryImpl() {
        super(ModeloConjunto.class);
    }
}