package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.ModeloVeiculo;

/**
 * = ModeloVeiculoRepositoryImpl
 *
 * Implementation of ModeloVeiculoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ModeloVeiculoRepositoryCustom.class)
public class ModeloVeiculoRepositoryImpl extends QueryDslRepositorySupportExt<ModeloVeiculo> implements ModeloVeiculoRepositoryCustom{

    /**
     * Default constructor
     */
    ModeloVeiculoRepositoryImpl() {
        super(ModeloVeiculo.class);
    }
}