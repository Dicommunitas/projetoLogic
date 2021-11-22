// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.service.api;

import br.com.projetologic.model.Cidade;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.service.api.ClienteService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ClienteService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public abstract Cliente ClienteService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     */
    public abstract void ClienteService.delete(Cliente cliente);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Cliente> ClienteService.save(Iterable<Cliente> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ClienteService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cliente
     */
    public abstract Cliente ClienteService.save(Cliente entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public abstract Cliente ClienteService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Cliente> ClienteService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Cliente> ClienteService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ClienteService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param viagensToAdd
     * @return Cliente
     */
    public abstract Cliente ClienteService.addToViagens(Cliente cliente, Iterable<Long> viagensToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param viagensToRemove
     * @return Cliente
     */
    public abstract Cliente ClienteService.removeFromViagens(Cliente cliente, Iterable<Long> viagensToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param viagens
     * @return Cliente
     */
    public abstract Cliente ClienteService.setViagens(Cliente cliente, Iterable<Long> viagens);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findByCidade(Cidade cidade, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     * @return Long
     */
    public abstract long ClienteService.countByCidade(Cidade cidade);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cnpj
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findByCnpjEquals(String cnpj, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cnpj
     * @return Long
     */
    public abstract long ClienteService.countByCnpjEquals(String cnpj);
    
}
