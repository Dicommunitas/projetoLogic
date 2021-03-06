// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.VeiculosCollectionJsonController;
import br.com.projetologic.controller.json.VeiculosItemJsonController;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.service.api.VeiculoService;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect VeiculosCollectionJsonController_Roo_JSON {
    
    declare @type: VeiculosCollectionJsonController: @RestController;
    
    declare @type: VeiculosCollectionJsonController: @RequestMapping(value = "/veiculos", name = "VeiculosCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VeiculoService VeiculosCollectionJsonController.veiculoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param veiculoService
     */
    @Autowired
    public VeiculosCollectionJsonController.new(VeiculoService veiculoService) {
        this.veiculoService = veiculoService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return VeiculoService
     */
    public VeiculoService VeiculosCollectionJsonController.getVeiculoService() {
        return veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculoService
     */
    public void VeiculosCollectionJsonController.setVeiculoService(VeiculoService veiculoService) {
        this.veiculoService = veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Veiculo>> VeiculosCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Veiculo> veiculos = getVeiculoService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(veiculos);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents VeiculosCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(VeiculosCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> VeiculosCollectionJsonController.create(@Valid @RequestBody Veiculo veiculo, BindingResult result) {
        
        if (veiculo.getId() != null || veiculo.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Veiculo newVeiculo = getVeiculoService().save(veiculo);
        UriComponents showURI = VeiculosItemJsonController.showURI(newVeiculo);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculos
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> VeiculosCollectionJsonController.createBatch(@Valid @RequestBody Collection<Veiculo> veiculos, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVeiculoService().save(veiculos);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculos
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> VeiculosCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Veiculo> veiculos, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVeiculoService().save(veiculos);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> VeiculosCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getVeiculoService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
