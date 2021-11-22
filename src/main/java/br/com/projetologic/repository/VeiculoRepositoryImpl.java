package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Veiculo;

/**
 * = VeiculoRepositoryImpl
 *
 * Implementation of VeiculoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = VeiculoRepositoryCustom.class)
public class VeiculoRepositoryImpl extends QueryDslRepositorySupportExt<Veiculo> implements VeiculoRepositoryCustom{

    /**
     * Default constructor
     */
    VeiculoRepositoryImpl() {
        super(Veiculo.class);
    }
}