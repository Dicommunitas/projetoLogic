package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.MotivoNegativaDescarga;

/**
 * = MotivoNegativaDescargaRepositoryImpl
 *
 * Implementation of MotivoNegativaDescargaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = MotivoNegativaDescargaRepositoryCustom.class)
public class MotivoNegativaDescargaRepositoryImpl extends QueryDslRepositorySupportExt<MotivoNegativaDescarga> implements MotivoNegativaDescargaRepositoryCustom{

    /**
     * Default constructor
     */
    MotivoNegativaDescargaRepositoryImpl() {
        super(MotivoNegativaDescarga.class);
    }
}