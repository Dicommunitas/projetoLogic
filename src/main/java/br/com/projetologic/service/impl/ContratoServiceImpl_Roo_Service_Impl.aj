// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.impl;

import br.com.projetologic.model.Contrato;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.repository.ContratoRepository;
import br.com.projetologic.service.impl.ContratoServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ContratoServiceImpl_Roo_Service_Impl {
    
    declare @type: ContratoServiceImpl: @Service;
    
    declare @type: ContratoServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContratoRepository ContratoServiceImpl.contratoRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contratoRepository
     */
    @Autowired
    public ContratoServiceImpl.new(ContratoRepository contratoRepository) {
        setContratoRepository(contratoRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContratoRepository
     */
    public ContratoRepository ContratoServiceImpl.getContratoRepository() {
        return contratoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratoRepository
     */
    public void ContratoServiceImpl.setContratoRepository(ContratoRepository contratoRepository) {
        this.contratoRepository = contratoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     */
    @Transactional
    public void ContratoServiceImpl.delete(Contrato contrato) {
        // Clear bidirectional many-to-one child relationship with Embarcador
        if (contrato.getContratante() != null) {
            contrato.getContratante().getContratos().remove(contrato);
        }
        
        getContratoRepository().delete(contrato);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Contrato> ContratoServiceImpl.save(Iterable<Contrato> entities) {
        return getContratoRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void ContratoServiceImpl.delete(Iterable<Long> ids) {
        List<Contrato> toDelete = getContratoRepository().findAll(ids);
        getContratoRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Contrato
     */
    @Transactional
    public Contrato ContratoServiceImpl.save(Contrato entity) {
        return getContratoRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Contrato
     */
    public Contrato ContratoServiceImpl.findOne(Long id) {
        return getContratoRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Contrato
     */
    public Contrato ContratoServiceImpl.findOneForUpdate(Long id) {
        return getContratoRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Contrato> ContratoServiceImpl.findAll(Iterable<Long> ids) {
        return getContratoRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Contrato> ContratoServiceImpl.findAll() {
        return getContratoRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long ContratoServiceImpl.count() {
        return getContratoRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Contrato> ContratoServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getContratoRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Contrato> ContratoServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getContratoRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Contrato> ContratoServiceImpl.findByContratante(Embarcador contratante, GlobalSearch globalSearch, Pageable pageable) {
        return getContratoRepository().findByContratante(contratante, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @return Long
     */
    public long ContratoServiceImpl.countByContratante(Embarcador contratante) {
        return getContratoRepository().countByContratante(contratante);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param vigenciaFim
     * @param vigenciaInicio
     * @param pageable
     * @return Page
     */
    public Page<Contrato> ContratoServiceImpl.findByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(Embarcador contratante, Calendar vigenciaFim, Calendar vigenciaInicio, Pageable pageable) {
        return getContratoRepository().findByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(contratante, vigenciaFim, vigenciaInicio, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param vigenciaFim
     * @param vigenciaInicio
     * @return Long
     */
    public long ContratoServiceImpl.countByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(Embarcador contratante, Calendar vigenciaFim, Calendar vigenciaInicio) {
        return getContratoRepository().countByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(contratante, vigenciaFim, vigenciaInicio);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Contrato> ContratoServiceImpl.getEntityType() {
        return Contrato.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> ContratoServiceImpl.getIdType() {
        return Long.class;
    }
    
}
