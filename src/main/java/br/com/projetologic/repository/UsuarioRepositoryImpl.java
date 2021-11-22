package br.com.projetologic.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import br.com.projetologic.model.Usuario;

/**
 * = UsuarioRepositoryImpl
 *
 * Implementation of UsuarioRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = UsuarioRepositoryCustom.class)
public class UsuarioRepositoryImpl extends QueryDslRepositorySupportExt<Usuario> implements UsuarioRepositoryCustom{

    /**
     * Default constructor
     */
    UsuarioRepositoryImpl() {
        super(Usuario.class);
    }
}