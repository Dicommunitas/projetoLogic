// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.ContratosCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.ContratosItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.ContratosItemThymeleafLinkFactory;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.service.api.ContratoService;
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

privileged aspect ContratosItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ContratosItemThymeleafController: @Controller;
    
    declare @type: ContratosItemThymeleafController: @RequestMapping(value = "/contratos/{contrato}", name = "ContratosItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContratoService ContratosItemThymeleafController.contratoService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ContratosItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ContratosItemThymeleafController> ContratosItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ContratosCollectionThymeleafController> ContratosItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Contrato> ContratosItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Contrato>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contratoService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ContratosItemThymeleafController.new(ContratoService contratoService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setContratoService(contratoService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ContratosItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ContratosCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContratoService
     */
    public ContratoService ContratosItemThymeleafController.getContratoService() {
        return contratoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contratoService
     */
    public void ContratosItemThymeleafController.setContratoService(ContratoService contratoService) {
        this.contratoService = contratoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ContratosItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ContratosItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ContratosItemThymeleafController> ContratosItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ContratosItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ContratosItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ContratosCollectionThymeleafController> ContratosItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ContratosItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ContratosCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Contrato
     */
    @ModelAttribute
    public Contrato ContratosItemThymeleafController.getContrato(@PathVariable("contrato") Long id, Locale locale, HttpMethod method) {
        Contrato contrato = null;
        if (HttpMethod.PUT.equals(method)) {
            contrato = contratoService.findOneForUpdate(id);
        } else {
            contrato = contratoService.findOne(id);
        }
        
        if (contrato == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Contrato", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return contrato;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ContratosItemThymeleafController.show(@ModelAttribute Contrato contrato, Model model) {
        model.addAttribute("contrato", contrato);
        return new ModelAndView("contratos/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ContratosItemThymeleafController.showInline(@ModelAttribute Contrato contrato, Model model) {
        model.addAttribute("contrato", contrato);
        return new ModelAndView("contratos/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ContratosItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("vigenciaInicio_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("vigenciaFim_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ContratosItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Contrato> ContratosItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ContratosItemThymeleafController.getModelName() {
        return "contrato";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ContratosItemThymeleafController.getEditViewPath() {
        return "contratos/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ContratosItemThymeleafController.getLastVersion(Contrato record) {
        return getContratoService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ContratosItemThymeleafController.populateAndGetFormView(Contrato entity, Model model) {
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
    @InitBinder("contrato")
    public void ContratosItemThymeleafController.initContratoBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Contrato.class, getContratoService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ContratosItemThymeleafController.editForm(@ModelAttribute Contrato contrato, Model model) {
        populateForm(model);
        
        model.addAttribute("contrato", contrato);
        return new ModelAndView("contratos/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ContratosItemThymeleafController.update(@Valid @ModelAttribute Contrato contrato, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Contrato savedContrato = getConcurrencyTemplate().execute(contrato, model, new ConcurrencyCallback<Contrato>() {
            @Override
            public Contrato doInConcurrency(Contrato contrato) throws Exception {
                return getContratoService().save(contrato);
            }
        });
        UriComponents showURI = getItemLink().to(ContratosItemThymeleafLinkFactory.SHOW).with("contrato", savedContrato.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contrato
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ContratosItemThymeleafController.delete(@ModelAttribute Contrato contrato) {
        getContratoService().delete(contrato);
        return ResponseEntity.ok().build();
    }
    
}
