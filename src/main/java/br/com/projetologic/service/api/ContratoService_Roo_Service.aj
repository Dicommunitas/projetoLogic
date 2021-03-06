// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.api;

import br.com.projetologic.model.Contrato;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.service.api.ContratoService;
import io.springlets.data.domain.GlobalSearch;
import java.util.Calendar;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ContratoService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Contrato
     */
    public abstract Contrato ContratoService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     */
    public abstract void ContratoService.delete(Contrato contrato);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Contrato> ContratoService.save(Iterable<Contrato> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ContratoService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Contrato
     */
    public abstract Contrato ContratoService.save(Contrato entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Contrato
     */
    public abstract Contrato ContratoService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Contrato> ContratoService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Contrato> ContratoService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ContratoService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Contrato> ContratoService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Contrato> ContratoService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Contrato> ContratoService.findByContratante(Embarcador contratante, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @return Long
     */
    public abstract long ContratoService.countByContratante(Embarcador contratante);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param vigenciaFim
     * @param vigenciaInicio
     * @param pageable
     * @return Page
     */
    public abstract Page<Contrato> ContratoService.findByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(Embarcador contratante, Calendar vigenciaFim, Calendar vigenciaInicio, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratante
     * @param vigenciaFim
     * @param vigenciaInicio
     * @return Long
     */
    public abstract long ContratoService.countByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(Embarcador contratante, Calendar vigenciaFim, Calendar vigenciaInicio);
    
}
