// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.VeiculosCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.VeiculosItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.VeiculosItemThymeleafLinkFactory;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.model.reference.TipoVeiculo;
import br.com.projetologic.model.reference.VerdadeiroFalso;
import br.com.projetologic.service.api.VeiculoService;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Arrays;
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

privileged aspect VeiculosItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: VeiculosItemThymeleafController: @Controller;
    
    declare @type: VeiculosItemThymeleafController: @RequestMapping(value = "/veiculos/{veiculo}", name = "VeiculosItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VeiculoService VeiculosItemThymeleafController.veiculoService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource VeiculosItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VeiculosItemThymeleafController> VeiculosItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VeiculosCollectionThymeleafController> VeiculosItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Veiculo> VeiculosItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Veiculo>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param veiculoService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public VeiculosItemThymeleafController.new(VeiculoService veiculoService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setVeiculoService(veiculoService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(VeiculosItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(VeiculosCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return VeiculoService
     */
    public VeiculoService VeiculosItemThymeleafController.getVeiculoService() {
        return veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculoService
     */
    public void VeiculosItemThymeleafController.setVeiculoService(VeiculoService veiculoService) {
        this.veiculoService = veiculoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource VeiculosItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void VeiculosItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VeiculosItemThymeleafController> VeiculosItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void VeiculosItemThymeleafController.setItemLink(MethodLinkBuilderFactory<VeiculosItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VeiculosCollectionThymeleafController> VeiculosItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void VeiculosItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<VeiculosCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Veiculo
     */
    @ModelAttribute
    public Veiculo VeiculosItemThymeleafController.getVeiculo(@PathVariable("veiculo") Long id, Locale locale, HttpMethod method) {
        Veiculo veiculo = null;
        if (HttpMethod.PUT.equals(method)) {
            veiculo = veiculoService.findOneForUpdate(id);
        } else {
            veiculo = veiculoService.findOne(id);
        }
        
        if (veiculo == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Veiculo", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return veiculo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView VeiculosItemThymeleafController.show(@ModelAttribute Veiculo veiculo, Model model) {
        model.addAttribute("veiculo", veiculo);
        return new ModelAndView("veiculos/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView VeiculosItemThymeleafController.showInline(@ModelAttribute Veiculo veiculo, Model model) {
        model.addAttribute("veiculo", veiculo);
        return new ModelAndView("veiculos/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VeiculosItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VeiculosItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("tipo", Arrays.asList(TipoVeiculo.values()));
        model.addAttribute("ativo", Arrays.asList(VerdadeiroFalso.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Veiculo> VeiculosItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VeiculosItemThymeleafController.getModelName() {
        return "veiculo";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VeiculosItemThymeleafController.getEditViewPath() {
        return "veiculos/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer VeiculosItemThymeleafController.getLastVersion(Veiculo record) {
        return getVeiculoService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView VeiculosItemThymeleafController.populateAndGetFormView(Veiculo entity, Model model) {
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
    @InitBinder("veiculo")
    public void VeiculosItemThymeleafController.initVeiculoBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Veiculo.class, getVeiculoService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView VeiculosItemThymeleafController.editForm(@ModelAttribute Veiculo veiculo, Model model) {
        populateForm(model);
        
        model.addAttribute("veiculo", veiculo);
        return new ModelAndView("veiculos/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView VeiculosItemThymeleafController.update(@Valid @ModelAttribute Veiculo veiculo, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Veiculo savedVeiculo = getConcurrencyTemplate().execute(veiculo, model, new ConcurrencyCallback<Veiculo>() {
            @Override
            public Veiculo doInConcurrency(Veiculo veiculo) throws Exception {
                return getVeiculoService().save(veiculo);
            }
        });
        UriComponents showURI = getItemLink().to(VeiculosItemThymeleafLinkFactory.SHOW).with("veiculo", savedVeiculo.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> VeiculosItemThymeleafController.delete(@ModelAttribute Veiculo veiculo) {
        getVeiculoService().delete(veiculo);
        return ResponseEntity.ok().build();
    }
    
}
