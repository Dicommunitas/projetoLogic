// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.ModelosVeiculosItemJsonController;
import br.com.projetologic.model.ModeloVeiculo;
import br.com.projetologic.service.api.ModeloVeiculoService;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ModelosVeiculosItemJsonController_Roo_JSON {
    
    declare @type: ModelosVeiculosItemJsonController: @RestController;
    
    declare @type: ModelosVeiculosItemJsonController: @RequestMapping(value = "/modelosveiculos/{modeloVeiculo}", name = "ModelosVeiculosItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ModeloVeiculoService ModelosVeiculosItemJsonController.modeloVeiculoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param modeloVeiculoService
     */
    @Autowired
    public ModelosVeiculosItemJsonController.new(ModeloVeiculoService modeloVeiculoService) {
        this.modeloVeiculoService = modeloVeiculoService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ModeloVeiculoService
     */
    public ModeloVeiculoService ModelosVeiculosItemJsonController.getModeloVeiculoService() {
        return modeloVeiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloVeiculoService
     */
    public void ModelosVeiculosItemJsonController.setModeloVeiculoService(ModeloVeiculoService modeloVeiculoService) {
        this.modeloVeiculoService = modeloVeiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ModeloVeiculo
     */
    @ModelAttribute
    public ModeloVeiculo ModelosVeiculosItemJsonController.getModeloVeiculo(@PathVariable("modeloVeiculo") Long id) {
        ModeloVeiculo modeloVeiculo = modeloVeiculoService.findOne(id);
        if (modeloVeiculo == null) {
            throw new NotFoundException(String.format("ModeloVeiculo with identifier '%s' not found",id));
        }
        return modeloVeiculo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloVeiculo
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ModelosVeiculosItemJsonController.show(@ModelAttribute ModeloVeiculo modeloVeiculo) {
        return ResponseEntity.ok(modeloVeiculo);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloVeiculo
     * @return UriComponents
     */
    public static UriComponents ModelosVeiculosItemJsonController.showURI(ModeloVeiculo modeloVeiculo) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ModelosVeiculosItemJsonController.class).show(modeloVeiculo))
            .buildAndExpand(modeloVeiculo.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedModeloVeiculo
     * @param modeloVeiculo
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ModelosVeiculosItemJsonController.update(@ModelAttribute ModeloVeiculo storedModeloVeiculo, @Valid @RequestBody ModeloVeiculo modeloVeiculo, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        modeloVeiculo.setId(storedModeloVeiculo.getId());
        getModeloVeiculoService().save(modeloVeiculo);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloVeiculo
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ModelosVeiculosItemJsonController.delete(@ModelAttribute ModeloVeiculo modeloVeiculo) {
        getModeloVeiculoService().delete(modeloVeiculo);
        return ResponseEntity.ok().build();
    }
    
}