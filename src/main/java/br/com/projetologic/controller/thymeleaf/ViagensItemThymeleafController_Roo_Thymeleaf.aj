// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.ViagensCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.ViagensItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.ViagensItemThymeleafLinkFactory;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.Status;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.model.reference.StatusViagem;
import br.com.projetologic.model.reference.VerdadeiroFalso;
import br.com.projetologic.service.api.ViagemService;
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

privileged aspect ViagensItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ViagensItemThymeleafController: @Controller;
    
    declare @type: ViagensItemThymeleafController: @RequestMapping(value = "/viagens/{viagem}", name = "ViagensItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ViagemService ViagensItemThymeleafController.viagemService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ViagensItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ViagensItemThymeleafController> ViagensItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ViagensCollectionThymeleafController> ViagensItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Viagem> ViagensItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Viagem>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param viagemService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ViagensItemThymeleafController.new(ViagemService viagemService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setViagemService(viagemService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ViagensItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ViagensCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ViagemService
     */
    public ViagemService ViagensItemThymeleafController.getViagemService() {
        return viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemService
     */
    public void ViagensItemThymeleafController.setViagemService(ViagemService viagemService) {
        this.viagemService = viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ViagensItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ViagensItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ViagensItemThymeleafController> ViagensItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ViagensItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ViagensItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ViagensCollectionThymeleafController> ViagensItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ViagensItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ViagensCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Viagem
     */
    @ModelAttribute
    public Viagem ViagensItemThymeleafController.getViagem(@PathVariable("viagem") Long id, Locale locale, HttpMethod method) {
        Viagem viagem = null;
        if (HttpMethod.PUT.equals(method)) {
            viagem = viagemService.findOneForUpdate(id);
        } else {
            viagem = viagemService.findOne(id);
        }
        
        if (viagem == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Viagem", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return viagem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ViagensItemThymeleafController.show(@ModelAttribute Viagem viagem, Model model) {
        model.addAttribute("viagem", viagem);
        return new ModelAndView("viagens/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ViagensItemThymeleafController.showInline(@ModelAttribute Viagem viagem, Model model) {
        model.addAttribute("viagem", viagem);
        return new ModelAndView("viagens/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ViagensItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("dataLancamento_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("agenda_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("inicioEstimado_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("inicioReal_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("horaParadaPostoFiscal_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("horaSaidaPostoFiscal_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("chegadaCliente_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("inicioDescarga_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("fimDescarga_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("fimViagem_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("chegadaLogisticaReversa_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("agendaReversa_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("fimLogisticaReversa_date_format", "dd/MM/yyyy - HH:mm");
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ViagensItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("statusViagem", Arrays.asList(StatusViagem.values()));
        model.addAttribute("perdeuAgenda", Arrays.asList(VerdadeiroFalso.values()));
        model.addAttribute("statusCustoDescarga", Arrays.asList(Status.values()));
        model.addAttribute("statusDiaria", Arrays.asList(Status.values()));
        model.addAttribute("devolucao", Arrays.asList(StatusDevolucao.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Viagem> ViagensItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ViagensItemThymeleafController.getModelName() {
        return "viagem";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ViagensItemThymeleafController.getEditViewPath() {
        return "viagens/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ViagensItemThymeleafController.getLastVersion(Viagem record) {
        return getViagemService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ViagensItemThymeleafController.populateAndGetFormView(Viagem entity, Model model) {
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
    @InitBinder("viagem")
    public void ViagensItemThymeleafController.initViagemBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Viagem.class, getViagemService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ViagensItemThymeleafController.editForm(@ModelAttribute Viagem viagem, Model model) {
        populateForm(model);
        
        model.addAttribute("viagem", viagem);
        return new ModelAndView("viagens/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ViagensItemThymeleafController.update(@Valid @ModelAttribute Viagem viagem, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Viagem savedViagem = getConcurrencyTemplate().execute(viagem, model, new ConcurrencyCallback<Viagem>() {
            @Override
            public Viagem doInConcurrency(Viagem viagem) throws Exception {
                return getViagemService().save(viagem);
            }
        });
        UriComponents showURI = getItemLink().to(ViagensItemThymeleafLinkFactory.SHOW).with("viagem", savedViagem.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ViagensItemThymeleafController.delete(@ModelAttribute Viagem viagem) {
        getViagemService().delete(viagem);
        return ResponseEntity.ok().build();
    }
    
}
