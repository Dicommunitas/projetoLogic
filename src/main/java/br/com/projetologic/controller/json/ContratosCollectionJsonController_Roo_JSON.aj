// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.ContratosCollectionJsonController;
import br.com.projetologic.controller.json.ContratosItemJsonController;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.service.api.ContratoService;
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

privileged aspect ContratosCollectionJsonController_Roo_JSON {
    
    declare @type: ContratosCollectionJsonController: @RestController;
    
    declare @type: ContratosCollectionJsonController: @RequestMapping(value = "/contratos", name = "ContratosCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContratoService ContratosCollectionJsonController.contratoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contratoService
     */
    @Autowired
    public ContratosCollectionJsonController.new(ContratoService contratoService) {
        this.contratoService = contratoService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContratoService
     */
    public ContratoService ContratosCollectionJsonController.getContratoService() {
        return contratoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratoService
     */
    public void ContratosCollectionJsonController.setContratoService(ContratoService contratoService) {
        this.contratoService = contratoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Contrato>> ContratosCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Contrato> contratos = getContratoService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(contratos);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents ContratosCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ContratosCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> ContratosCollectionJsonController.create(@Valid @RequestBody Contrato contrato, BindingResult result) {
        
        if (contrato.getId() != null || contrato.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Contrato newContrato = getContratoService().save(contrato);
        UriComponents showURI = ContratosItemJsonController.showURI(newContrato);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratos
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> ContratosCollectionJsonController.createBatch(@Valid @RequestBody Collection<Contrato> contratos, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getContratoService().save(contratos);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratos
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> ContratosCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Contrato> contratos, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getContratoService().save(contratos);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> ContratosCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getContratoService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
