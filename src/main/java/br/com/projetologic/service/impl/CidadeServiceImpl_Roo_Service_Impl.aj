// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.impl;

import br.com.projetologic.model.Cidade;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.repository.CidadeRepository;
import br.com.projetologic.service.api.ClienteService;
import br.com.projetologic.service.api.ViagemService;
import br.com.projetologic.service.impl.CidadeServiceImpl;
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

privileged aspect CidadeServiceImpl_Roo_Service_Impl {
    
    declare @type: CidadeServiceImpl: @Service;
    
    declare @type: CidadeServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CidadeRepository CidadeServiceImpl.cidadeRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ClienteService CidadeServiceImpl.clienteService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ViagemService CidadeServiceImpl.viagemService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cidadeRepository
     * @param clienteService
     * @param viagemService
     */
    @Autowired
    public CidadeServiceImpl.new(CidadeRepository cidadeRepository, @Lazy ClienteService clienteService, @Lazy ViagemService viagemService) {
        setCidadeRepository(cidadeRepository);
        setClienteService(clienteService);
        setViagemService(viagemService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CidadeRepository
     */
    public CidadeRepository CidadeServiceImpl.getCidadeRepository() {
        return cidadeRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidadeRepository
     */
    public void CidadeServiceImpl.setCidadeRepository(CidadeRepository cidadeRepository) {
        this.cidadeRepository = cidadeRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClienteService
     */
    public ClienteService CidadeServiceImpl.getClienteService() {
        return clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clienteService
     */
    public void CidadeServiceImpl.setClienteService(ClienteService clienteService) {
        this.clienteService = clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ViagemService
     */
    public ViagemService CidadeServiceImpl.getViagemService() {
        return viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemService
     */
    public void CidadeServiceImpl.setViagemService(ViagemService viagemService) {
        this.viagemService = viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @return Map
     */
    public Map<String, List<MessageI18n>> CidadeServiceImpl.validate(Cidade cidade) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param clientesToAdd
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.addToClientes(Cidade cidade, Iterable<Long> clientesToAdd) {
        List<Cliente> clientes = getClienteService().findAll(clientesToAdd);
        cidade.addToClientes(clientes);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param viagensToAdd
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.addToViagens(Cidade cidade, Iterable<Long> viagensToAdd) {
        List<Viagem> viagens = getViagemService().findAll(viagensToAdd);
        cidade.addToViagens(viagens);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param clientesToRemove
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.removeFromClientes(Cidade cidade, Iterable<Long> clientesToRemove) {
        List<Cliente> clientes = getClienteService().findAll(clientesToRemove);
        cidade.removeFromClientes(clientes);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param viagensToRemove
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.removeFromViagens(Cidade cidade, Iterable<Long> viagensToRemove) {
        List<Viagem> viagens = getViagemService().findAll(viagensToRemove);
        cidade.removeFromViagens(viagens);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param clientes
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.setClientes(Cidade cidade, Iterable<Long> clientes) {
        List<Cliente> items = getClienteService().findAll(clientes);
        Set<Cliente> currents = cidade.getClientes();
        Set<Cliente> toRemove = new HashSet<Cliente>();
        for (Iterator<Cliente> iterator = currents.iterator(); iterator.hasNext();) {
            Cliente nextCliente = iterator.next();
            if (items.contains(nextCliente)) {
                items.remove(nextCliente);
            } else {
                toRemove.add(nextCliente);
            }
        }
        cidade.removeFromClientes(toRemove);
        cidade.addToClientes(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        cidade.setVersion(cidade.getVersion() + 1);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param viagens
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.setViagens(Cidade cidade, Iterable<Long> viagens) {
        List<Viagem> items = getViagemService().findAll(viagens);
        Set<Viagem> currents = cidade.getViagens();
        Set<Viagem> toRemove = new HashSet<Viagem>();
        for (Iterator<Viagem> iterator = currents.iterator(); iterator.hasNext();) {
            Viagem nextViagem = iterator.next();
            if (items.contains(nextViagem)) {
                items.remove(nextViagem);
            } else {
                toRemove.add(nextViagem);
            }
        }
        cidade.removeFromViagens(toRemove);
        cidade.addToViagens(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        cidade.setVersion(cidade.getVersion() + 1);
        return getCidadeRepository().save(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     */
    @Transactional
    public void CidadeServiceImpl.delete(Cidade cidade) {
        // Clear bidirectional one-to-many parent relationship with Cliente
        for (Cliente item : cidade.getClientes()) {
            item.setCidade(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with Viagem
        for (Viagem item : cidade.getViagens()) {
            item.setCidadeOrigem(null);
        }
        
        getCidadeRepository().delete(cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Cidade> CidadeServiceImpl.save(Iterable<Cidade> entities) {
        return getCidadeRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CidadeServiceImpl.delete(Iterable<Long> ids) {
        List<Cidade> toDelete = getCidadeRepository().findAll(ids);
        getCidadeRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cidade
     */
    @Transactional
    public Cidade CidadeServiceImpl.save(Cidade entity) {
        return getCidadeRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cidade
     */
    public Cidade CidadeServiceImpl.findOne(Long id) {
        return getCidadeRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cidade
     */
    public Cidade CidadeServiceImpl.findOneForUpdate(Long id) {
        return getCidadeRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Cidade> CidadeServiceImpl.findAll(Iterable<Long> ids) {
        return getCidadeRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Cidade> CidadeServiceImpl.findAll() {
        return getCidadeRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CidadeServiceImpl.count() {
        return getCidadeRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cidade> CidadeServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCidadeRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cidade> CidadeServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCidadeRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Cidade> CidadeServiceImpl.getEntityType() {
        return Cidade.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CidadeServiceImpl.getIdType() {
        return Long.class;
    }
    
}