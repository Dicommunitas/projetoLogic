// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.api;

import br.com.projetologic.model.Regra;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.service.api.RegraService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect RegraService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Regra
     */
    public abstract Regra RegraService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regra
     */
    public abstract void RegraService.delete(Regra regra);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Regra> RegraService.save(Iterable<Regra> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void RegraService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Regra
     */
    public abstract Regra RegraService.save(Regra entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Regra
     */
    public abstract Regra RegraService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Regra> RegraService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Regra> RegraService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long RegraService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Regra> RegraService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Regra> RegraService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarios
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Regra> RegraService.findByUsuariosContains(Usuario usuarios, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarios
     * @return Long
     */
    public abstract long RegraService.countByUsuariosContains(Usuario usuarios);
    
}
