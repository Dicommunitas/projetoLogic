// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.ProdutosDevolvidosItemJsonController;
import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.service.api.ProdutoDevolvidoService;
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

privileged aspect ProdutosDevolvidosItemJsonController_Roo_JSON {
    
    declare @type: ProdutosDevolvidosItemJsonController: @RestController;
    
    declare @type: ProdutosDevolvidosItemJsonController: @RequestMapping(value = "/produtosdevolvidos/{produtoDevolvido}", name = "ProdutosDevolvidosItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProdutoDevolvidoService ProdutosDevolvidosItemJsonController.produtoDevolvidoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param produtoDevolvidoService
     */
    @Autowired
    public ProdutosDevolvidosItemJsonController.new(ProdutoDevolvidoService produtoDevolvidoService) {
        this.produtoDevolvidoService = produtoDevolvidoService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProdutoDevolvidoService
     */
    public ProdutoDevolvidoService ProdutosDevolvidosItemJsonController.getProdutoDevolvidoService() {
        return produtoDevolvidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvidoService
     */
    public void ProdutosDevolvidosItemJsonController.setProdutoDevolvidoService(ProdutoDevolvidoService produtoDevolvidoService) {
        this.produtoDevolvidoService = produtoDevolvidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ProdutoDevolvido
     */
    @ModelAttribute
    public ProdutoDevolvido ProdutosDevolvidosItemJsonController.getProdutoDevolvido(@PathVariable("produtoDevolvido") Long id) {
        ProdutoDevolvido produtoDevolvido = produtoDevolvidoService.findOne(id);
        if (produtoDevolvido == null) {
            throw new NotFoundException(String.format("ProdutoDevolvido with identifier '%s' not found",id));
        }
        return produtoDevolvido;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ProdutosDevolvidosItemJsonController.show(@ModelAttribute ProdutoDevolvido produtoDevolvido) {
        return ResponseEntity.ok(produtoDevolvido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @return UriComponents
     */
    public static UriComponents ProdutosDevolvidosItemJsonController.showURI(ProdutoDevolvido produtoDevolvido) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ProdutosDevolvidosItemJsonController.class).show(produtoDevolvido))
            .buildAndExpand(produtoDevolvido.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedProdutoDevolvido
     * @param produtoDevolvido
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ProdutosDevolvidosItemJsonController.update(@ModelAttribute ProdutoDevolvido storedProdutoDevolvido, @Valid @RequestBody ProdutoDevolvido produtoDevolvido, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        produtoDevolvido.setId(storedProdutoDevolvido.getId());
        getProdutoDevolvidoService().save(produtoDevolvido);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ProdutosDevolvidosItemJsonController.delete(@ModelAttribute ProdutoDevolvido produtoDevolvido) {
        getProdutoDevolvidoService().delete(produtoDevolvido);
        return ResponseEntity.ok().build();
    }
    
}
