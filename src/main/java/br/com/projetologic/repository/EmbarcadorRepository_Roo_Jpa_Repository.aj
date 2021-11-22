// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.repository;

import br.com.projetologic.model.Embarcador;
import br.com.projetologic.repository.EmbarcadorRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EmbarcadorRepository_Roo_Jpa_Repository {
    
    declare @type: EmbarcadorRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cnpj
     * @param pageable
     * @return Page
     */
    public abstract Page<Embarcador> EmbarcadorRepository.findByCnpjEquals(String cnpj, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cnpj
     * @return Long
     */
    public abstract long EmbarcadorRepository.countByCnpjEquals(String cnpj);
    
}