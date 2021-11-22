// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.UsuariosItemJsonController;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.service.api.UsuarioService;
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

privileged aspect UsuariosItemJsonController_Roo_JSON {
    
    declare @type: UsuariosItemJsonController: @RestController;
    
    declare @type: UsuariosItemJsonController: @RequestMapping(value = "/usuarios/{usuario}", name = "UsuariosItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private UsuarioService UsuariosItemJsonController.usuarioService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param usuarioService
     */
    @Autowired
    public UsuariosItemJsonController.new(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return UsuarioService
     */
    public UsuarioService UsuariosItemJsonController.getUsuarioService() {
        return usuarioService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarioService
     */
    public void UsuariosItemJsonController.setUsuarioService(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Usuario
     */
    @ModelAttribute
    public Usuario UsuariosItemJsonController.getUsuario(@PathVariable("usuario") Long id) {
        Usuario usuario = usuarioService.findOne(id);
        if (usuario == null) {
            throw new NotFoundException(String.format("Usuario with identifier '%s' not found",id));
        }
        return usuario;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> UsuariosItemJsonController.show(@ModelAttribute Usuario usuario) {
        return ResponseEntity.ok(usuario);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return UriComponents
     */
    public static UriComponents UsuariosItemJsonController.showURI(Usuario usuario) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(UsuariosItemJsonController.class).show(usuario))
            .buildAndExpand(usuario.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedUsuario
     * @param usuario
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> UsuariosItemJsonController.update(@ModelAttribute Usuario storedUsuario, @Valid @RequestBody Usuario usuario, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        usuario.setId(storedUsuario.getId());
        getUsuarioService().save(usuario);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> UsuariosItemJsonController.delete(@ModelAttribute Usuario usuario) {
        getUsuarioService().delete(usuario);
        return ResponseEntity.ok().build();
    }
    
}
