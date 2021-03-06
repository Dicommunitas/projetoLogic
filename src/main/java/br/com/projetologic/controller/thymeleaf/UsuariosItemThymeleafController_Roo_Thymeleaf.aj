// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.UsuariosCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.UsuariosItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.UsuariosItemThymeleafLinkFactory;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.service.api.UsuarioService;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect UsuariosItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: UsuariosItemThymeleafController: @Controller;
    
    declare @type: UsuariosItemThymeleafController: @RequestMapping(value = "/usuarios/{usuario}", name = "UsuariosItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private UsuarioService UsuariosItemThymeleafController.usuarioService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource UsuariosItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<UsuariosItemThymeleafController> UsuariosItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<UsuariosCollectionThymeleafController> UsuariosItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Usuario> UsuariosItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Usuario>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param usuarioService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public UsuariosItemThymeleafController.new(UsuarioService usuarioService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setUsuarioService(usuarioService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(UsuariosItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(UsuariosCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return UsuarioService
     */
    public UsuarioService UsuariosItemThymeleafController.getUsuarioService() {
        return usuarioService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuarioService
     */
    public void UsuariosItemThymeleafController.setUsuarioService(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource UsuariosItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void UsuariosItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<UsuariosItemThymeleafController> UsuariosItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void UsuariosItemThymeleafController.setItemLink(MethodLinkBuilderFactory<UsuariosItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<UsuariosCollectionThymeleafController> UsuariosItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void UsuariosItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<UsuariosCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Usuario
     */
    @ModelAttribute
    public Usuario UsuariosItemThymeleafController.getUsuario(@PathVariable("usuario") Long id, Locale locale, HttpMethod method) {
        Usuario usuario = null;
        if (HttpMethod.PUT.equals(method)) {
            usuario = usuarioService.findOneForUpdate(id);
        } else {
            usuario = usuarioService.findOne(id);
        }
        
        if (usuario == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Usuario", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return usuario;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView UsuariosItemThymeleafController.show(@ModelAttribute Usuario usuario, Model model) {
        model.addAttribute("usuario", usuario);
        return new ModelAndView("usuarios/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView UsuariosItemThymeleafController.showInline(@ModelAttribute Usuario usuario, Model model) {
        model.addAttribute("usuario", usuario);
        return new ModelAndView("usuarios/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void UsuariosItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void UsuariosItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Usuario> UsuariosItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String UsuariosItemThymeleafController.getModelName() {
        return "usuario";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String UsuariosItemThymeleafController.getEditViewPath() {
        return "usuarios/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer UsuariosItemThymeleafController.getLastVersion(Usuario record) {
        return getUsuarioService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView UsuariosItemThymeleafController.populateAndGetFormView(Usuario entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("usuario")
    public void UsuariosItemThymeleafController.initUsuarioBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Usuario.class, getUsuarioService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView UsuariosItemThymeleafController.editForm(@ModelAttribute Usuario usuario, Model model) {
        populateForm(model);
        
        model.addAttribute("usuario", usuario);
        return new ModelAndView("usuarios/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView UsuariosItemThymeleafController.update(@Valid @ModelAttribute Usuario usuario, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Usuario savedUsuario = getConcurrencyTemplate().execute(usuario, model, new ConcurrencyCallback<Usuario>() {
            @Override
            public Usuario doInConcurrency(Usuario usuario) throws Exception {
                return getUsuarioService().save(usuario);
            }
        });
        UriComponents showURI = getItemLink().to(UsuariosItemThymeleafLinkFactory.SHOW).with("usuario", savedUsuario.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> UsuariosItemThymeleafController.delete(@ModelAttribute Usuario usuario) {
        getUsuarioService().delete(usuario);
        return ResponseEntity.ok().build();
    }
    
}
