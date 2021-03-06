// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.impl;

import br.com.projetologic.model.Regra;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.repository.RegraRepository;
import br.com.projetologic.service.impl.RegraServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RegraServiceImpl_Roo_Service_Impl {
    
    declare @type: RegraServiceImpl: @Service;
    
    declare @type: RegraServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegraRepository RegraServiceImpl.regraRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param regraRepository
     */
    @Autowired
    public RegraServiceImpl.new(RegraRepository regraRepository) {
        setRegraRepository(regraRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegraRepository
     */
    public RegraRepository RegraServiceImpl.getRegraRepository() {
        return regraRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regraRepository
     */
    public void RegraServiceImpl.setRegraRepository(RegraRepository regraRepository) {
        this.regraRepository = regraRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regra
     */
    @Transactional
    public void RegraServiceImpl.delete(Regra regra) {
        // Clear bidirectional many-to-many child relationship with Usuario
        for (Usuario item : regra.getUsuarios()) {
            item.getAcessos().remove(regra);
        }
        
        getRegraRepository().delete(regra);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Regra> RegraServiceImpl.save(Iterable<Regra> entities) {
        return getRegraRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void RegraServiceImpl.delete(Iterable<Long> ids) {
        List<Regra> toDelete = getRegraRepository().findAll(ids);
        getRegraRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Regra
     */
    @Transactional
    public Regra RegraServiceImpl.save(Regra entity) {
        return getRegraRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Regra
     */
    public Regra RegraServiceImpl.findOne(Long id) {
        return getRegraRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Regra
     */
    public Regra RegraServiceImpl.findOneForUpdate(Long id) {
        return getRegraRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Regra> RegraServiceImpl.findAll(Iterable<Long> ids) {
        return getRegraRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Regra> RegraServiceImpl.findAll() {
        return getRegraRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long RegraServiceImpl.count() {
        return getRegraRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Regra> RegraServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getRegraRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Regra> RegraServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getRegraRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarios
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Regra> RegraServiceImpl.findByUsuariosContains(Usuario usuarios, GlobalSearch globalSearch, Pageable pageable) {
        return getRegraRepository().findByUsuariosContains(usuarios, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarios
     * @return Long
     */
    public long RegraServiceImpl.countByUsuariosContains(Usuario usuarios) {
        return getRegraRepository().countByUsuariosContains(usuarios);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Regra> RegraServiceImpl.getEntityType() {
        return Regra.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> RegraServiceImpl.getIdType() {
        return Long.class;
    }
    
}
