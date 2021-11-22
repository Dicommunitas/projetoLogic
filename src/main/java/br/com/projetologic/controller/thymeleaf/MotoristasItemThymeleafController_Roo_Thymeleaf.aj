// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.MotoristasCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.MotoristasItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.MotoristasItemThymeleafLinkFactory;
import br.com.projetologic.model.Motorista;
import br.com.projetologic.service.api.MotoristaService;
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

privileged aspect MotoristasItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: MotoristasItemThymeleafController: @Controller;
    
    declare @type: MotoristasItemThymeleafController: @RequestMapping(value = "/motoristas/{motorista}", name = "MotoristasItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MotoristaService MotoristasItemThymeleafController.motoristaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource MotoristasItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<MotoristasItemThymeleafController> MotoristasItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<MotoristasCollectionThymeleafController> MotoristasItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Motorista> MotoristasItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Motorista>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param motoristaService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public MotoristasItemThymeleafController.new(MotoristaService motoristaService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setMotoristaService(motoristaService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(MotoristasItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(MotoristasCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MotoristaService
     */
    public MotoristaService MotoristasItemThymeleafController.getMotoristaService() {
        return motoristaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motoristaService
     */
    public void MotoristasItemThymeleafController.setMotoristaService(MotoristaService motoristaService) {
        this.motoristaService = motoristaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource MotoristasItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void MotoristasItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<MotoristasItemThymeleafController> MotoristasItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void MotoristasItemThymeleafController.setItemLink(MethodLinkBuilderFactory<MotoristasItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<MotoristasCollectionThymeleafController> MotoristasItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void MotoristasItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<MotoristasCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Motorista
     */
    @ModelAttribute
    public Motorista MotoristasItemThymeleafController.getMotorista(@PathVariable("motorista") Long id, Locale locale, HttpMethod method) {
        Motorista motorista = null;
        if (HttpMethod.PUT.equals(method)) {
            motorista = motoristaService.findOneForUpdate(id);
        } else {
            motorista = motoristaService.findOne(id);
        }
        
        if (motorista == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Motorista", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return motorista;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView MotoristasItemThymeleafController.show(@ModelAttribute Motorista motorista, Model model) {
        model.addAttribute("motorista", motorista);
        return new ModelAndView("motoristas/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView MotoristasItemThymeleafController.showInline(@ModelAttribute Motorista motorista, Model model) {
        model.addAttribute("motorista", motorista);
        return new ModelAndView("motoristas/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void MotoristasItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("dataNascimento_date_format", "dd/MM/yyyy");
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void MotoristasItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Motorista> MotoristasItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String MotoristasItemThymeleafController.getModelName() {
        return "motorista";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String MotoristasItemThymeleafController.getEditViewPath() {
        return "motoristas/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer MotoristasItemThymeleafController.getLastVersion(Motorista record) {
        return getMotoristaService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView MotoristasItemThymeleafController.populateAndGetFormView(Motorista entity, Model model) {
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
    @InitBinder("motorista")
    public void MotoristasItemThymeleafController.initMotoristaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Motorista.class, getMotoristaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView MotoristasItemThymeleafController.editForm(@ModelAttribute Motorista motorista, Model model) {
        populateForm(model);
        
        model.addAttribute("motorista", motorista);
        return new ModelAndView("motoristas/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView MotoristasItemThymeleafController.update(@Valid @ModelAttribute Motorista motorista, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Motorista savedMotorista = getConcurrencyTemplate().execute(motorista, model, new ConcurrencyCallback<Motorista>() {
            @Override
            public Motorista doInConcurrency(Motorista motorista) throws Exception {
                return getMotoristaService().save(motorista);
            }
        });
        UriComponents showURI = getItemLink().to(MotoristasItemThymeleafLinkFactory.SHOW).with("motorista", savedMotorista.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> MotoristasItemThymeleafController.delete(@ModelAttribute Motorista motorista) {
        getMotoristaService().delete(motorista);
        return ResponseEntity.ok().build();
    }
    
}