// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.impl;

import br.com.projetologic.model.ModeloConjunto;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.repository.ModeloConjuntoRepository;
import br.com.projetologic.service.api.VeiculoService;
import br.com.projetologic.service.impl.ModeloConjuntoServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ModeloConjuntoServiceImpl_Roo_Service_Impl {
    
    declare @type: ModeloConjuntoServiceImpl: @Service;
    
    declare @type: ModeloConjuntoServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ModeloConjuntoRepository ModeloConjuntoServiceImpl.modeloConjuntoRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VeiculoService ModeloConjuntoServiceImpl.veiculoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param modeloConjuntoRepository
     * @param veiculoService
     */
    @Autowired
    public ModeloConjuntoServiceImpl.new(ModeloConjuntoRepository modeloConjuntoRepository, @Lazy VeiculoService veiculoService) {
        setModeloConjuntoRepository(modeloConjuntoRepository);
        setVeiculoService(veiculoService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ModeloConjuntoRepository
     */
    public ModeloConjuntoRepository ModeloConjuntoServiceImpl.getModeloConjuntoRepository() {
        return modeloConjuntoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjuntoRepository
     */
    public void ModeloConjuntoServiceImpl.setModeloConjuntoRepository(ModeloConjuntoRepository modeloConjuntoRepository) {
        this.modeloConjuntoRepository = modeloConjuntoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VeiculoService
     */
    public VeiculoService ModeloConjuntoServiceImpl.getVeiculoService() {
        return veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculoService
     */
    public void ModeloConjuntoServiceImpl.setVeiculoService(VeiculoService veiculoService) {
        this.veiculoService = veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloconjunto
     * @return Map
     */
    public Map<String, List<MessageI18n>> ModeloConjuntoServiceImpl.validate(ModeloConjunto modeloconjunto) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjunto
     * @param veiculoToAdd
     * @return ModeloConjunto
     */
    @Transactional
    public ModeloConjunto ModeloConjuntoServiceImpl.addToVeiculo(ModeloConjunto modeloConjunto, Iterable<Long> veiculoToAdd) {
        List<Veiculo> veiculo = getVeiculoService().findAll(veiculoToAdd);
        modeloConjunto.addToVeiculo(veiculo);
        return getModeloConjuntoRepository().save(modeloConjunto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjunto
     * @param veiculoToRemove
     * @return ModeloConjunto
     */
    @Transactional
    public ModeloConjunto ModeloConjuntoServiceImpl.removeFromVeiculo(ModeloConjunto modeloConjunto, Iterable<Long> veiculoToRemove) {
        List<Veiculo> veiculo = getVeiculoService().findAll(veiculoToRemove);
        modeloConjunto.removeFromVeiculo(veiculo);
        return getModeloConjuntoRepository().save(modeloConjunto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjunto
     * @param veiculo
     * @return ModeloConjunto
     */
    @Transactional
    public ModeloConjunto ModeloConjuntoServiceImpl.setVeiculo(ModeloConjunto modeloConjunto, Iterable<Long> veiculo) {
        List<Veiculo> items = getVeiculoService().findAll(veiculo);
        Set<Veiculo> currents = modeloConjunto.getVeiculo();
        Set<Veiculo> toRemove = new HashSet<Veiculo>();
        for (Iterator<Veiculo> iterator = currents.iterator(); iterator.hasNext();) {
            Veiculo nextVeiculo = iterator.next();
            if (items.contains(nextVeiculo)) {
                items.remove(nextVeiculo);
            } else {
                toRemove.add(nextVeiculo);
            }
        }
        modeloConjunto.removeFromVeiculo(toRemove);
        modeloConjunto.addToVeiculo(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        modeloConjunto.setVersion(modeloConjunto.getVersion() + 1);
        return getModeloConjuntoRepository().save(modeloConjunto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjunto
     */
    @Transactional
    public void ModeloConjuntoServiceImpl.delete(ModeloConjunto modeloConjunto) {
        // Clear bidirectional one-to-many parent relationship with Veiculo
        for (Veiculo item : modeloConjunto.getVeiculo()) {
            item.setModeloConjunto(null);
        }
        
        getModeloConjuntoRepository().delete(modeloConjunto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<ModeloConjunto> ModeloConjuntoServiceImpl.save(Iterable<ModeloConjunto> entities) {
        return getModeloConjuntoRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void ModeloConjuntoServiceImpl.delete(Iterable<Long> ids) {
        List<ModeloConjunto> toDelete = getModeloConjuntoRepository().findAll(ids);
        getModeloConjuntoRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return ModeloConjunto
     */
    @Transactional
    public ModeloConjunto ModeloConjuntoServiceImpl.save(ModeloConjunto entity) {
        return getModeloConjuntoRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ModeloConjunto
     */
    public ModeloConjunto ModeloConjuntoServiceImpl.findOne(Long id) {
        return getModeloConjuntoRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ModeloConjunto
     */
    public ModeloConjunto ModeloConjuntoServiceImpl.findOneForUpdate(Long id) {
        return getModeloConjuntoRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<ModeloConjunto> ModeloConjuntoServiceImpl.findAll(Iterable<Long> ids) {
        return getModeloConjuntoRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<ModeloConjunto> ModeloConjuntoServiceImpl.findAll() {
        return getModeloConjuntoRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long ModeloConjuntoServiceImpl.count() {
        return getModeloConjuntoRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ModeloConjunto> ModeloConjuntoServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getModeloConjuntoRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<ModeloConjunto> ModeloConjuntoServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getModeloConjuntoRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<ModeloConjunto> ModeloConjuntoServiceImpl.getEntityType() {
        return ModeloConjunto.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> ModeloConjuntoServiceImpl.getIdType() {
        return Long.class;
    }
    
}
