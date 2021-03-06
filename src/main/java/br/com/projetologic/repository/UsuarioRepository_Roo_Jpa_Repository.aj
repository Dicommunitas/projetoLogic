// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.repository;

import br.com.projetologic.model.Usuario;
import br.com.projetologic.repository.UsuarioRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UsuarioRepository_Roo_Jpa_Repository {
    
    declare @type: UsuarioRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param login
     * @param pageable
     * @return Page
     */
    public abstract Page<Usuario> UsuarioRepository.findByLogin(String login, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param login
     * @return Long
     */
    public abstract long UsuarioRepository.countByLogin(String login);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cpf
     * @param pageable
     * @return Page
     */
    public abstract Page<Usuario> UsuarioRepository.findByCpfEquals(String cpf, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cpf
     * @return Long
     */
    public abstract long UsuarioRepository.countByCpfEquals(String cpf);
    
}
