// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.ClientesCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.ClientesItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.ClientesItemThymeleafLinkFactory;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.service.api.ClienteService;
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

privileged aspect ClientesItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ClientesItemThymeleafController: @Controller;
    
    declare @type: ClientesItemThymeleafController: @RequestMapping(value = "/clientes/{cliente}", name = "ClientesItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ClienteService ClientesItemThymeleafController.clienteService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ClientesItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ClientesItemThymeleafController> ClientesItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ClientesCollectionThymeleafController> ClientesItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Cliente> ClientesItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Cliente>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param clienteService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ClientesItemThymeleafController.new(ClienteService clienteService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setClienteService(clienteService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ClientesItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ClientesCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClienteService
     */
    public ClienteService ClientesItemThymeleafController.getClienteService() {
        return clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clienteService
     */
    public void ClientesItemThymeleafController.setClienteService(ClienteService clienteService) {
        this.clienteService = clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ClientesItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ClientesItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ClientesItemThymeleafController> ClientesItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ClientesItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ClientesItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ClientesCollectionThymeleafController> ClientesItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ClientesItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ClientesCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Cliente
     */
    @ModelAttribute
    public Cliente ClientesItemThymeleafController.getCliente(@PathVariable("cliente") Long id, Locale locale, HttpMethod method) {
        Cliente cliente = null;
        if (HttpMethod.PUT.equals(method)) {
            cliente = clienteService.findOneForUpdate(id);
        } else {
            cliente = clienteService.findOne(id);
        }
        
        if (cliente == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Cliente", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return cliente;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ClientesItemThymeleafController.show(@ModelAttribute Cliente cliente, Model model) {
        model.addAttribute("cliente", cliente);
        return new ModelAndView("clientes/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ClientesItemThymeleafController.showInline(@ModelAttribute Cliente cliente, Model model) {
        model.addAttribute("cliente", cliente);
        return new ModelAndView("clientes/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ClientesItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ClientesItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Cliente> ClientesItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ClientesItemThymeleafController.getModelName() {
        return "cliente";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ClientesItemThymeleafController.getEditViewPath() {
        return "clientes/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ClientesItemThymeleafController.getLastVersion(Cliente record) {
        return getClienteService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ClientesItemThymeleafController.populateAndGetFormView(Cliente entity, Model model) {
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
    @InitBinder("cliente")
    public void ClientesItemThymeleafController.initClienteBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Cliente.class, getClienteService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ClientesItemThymeleafController.editForm(@ModelAttribute Cliente cliente, Model model) {
        populateForm(model);
        
        model.addAttribute("cliente", cliente);
        return new ModelAndView("clientes/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ClientesItemThymeleafController.update(@Valid @ModelAttribute Cliente cliente, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Cliente savedCliente = getConcurrencyTemplate().execute(cliente, model, new ConcurrencyCallback<Cliente>() {
            @Override
            public Cliente doInConcurrency(Cliente cliente) throws Exception {
                return getClienteService().save(cliente);
            }
        });
        UriComponents showURI = getItemLink().to(ClientesItemThymeleafLinkFactory.SHOW).with("cliente", savedCliente.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ClientesItemThymeleafController.delete(@ModelAttribute Cliente cliente) {
        getClienteService().delete(cliente);
        return ResponseEntity.ok().build();
    }
    
}
