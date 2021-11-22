// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.ProdutosDevolvidosCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.ProdutosDevolvidosItemThymeleafController;
import br.com.projetologic.controller.thymeleaf.ProdutosDevolvidosItemThymeleafLinkFactory;
import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.service.api.ProdutoDevolvidoService;
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

privileged aspect ProdutosDevolvidosItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ProdutosDevolvidosItemThymeleafController: @Controller;
    
    declare @type: ProdutosDevolvidosItemThymeleafController: @RequestMapping(value = "/produtosdevolvidos/{produtoDevolvido}", name = "ProdutosDevolvidosItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProdutoDevolvidoService ProdutosDevolvidosItemThymeleafController.produtoDevolvidoService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ProdutosDevolvidosItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProdutosDevolvidosItemThymeleafController> ProdutosDevolvidosItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProdutosDevolvidosCollectionThymeleafController> ProdutosDevolvidosItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<ProdutoDevolvido> ProdutosDevolvidosItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<ProdutoDevolvido>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param produtoDevolvidoService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ProdutosDevolvidosItemThymeleafController.new(ProdutoDevolvidoService produtoDevolvidoService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setProdutoDevolvidoService(produtoDevolvidoService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ProdutosDevolvidosItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ProdutosDevolvidosCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProdutoDevolvidoService
     */
    public ProdutoDevolvidoService ProdutosDevolvidosItemThymeleafController.getProdutoDevolvidoService() {
        return produtoDevolvidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvidoService
     */
    public void ProdutosDevolvidosItemThymeleafController.setProdutoDevolvidoService(ProdutoDevolvidoService produtoDevolvidoService) {
        this.produtoDevolvidoService = produtoDevolvidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ProdutosDevolvidosItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ProdutosDevolvidosItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProdutosDevolvidosItemThymeleafController> ProdutosDevolvidosItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ProdutosDevolvidosItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ProdutosDevolvidosItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProdutosDevolvidosCollectionThymeleafController> ProdutosDevolvidosItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ProdutosDevolvidosItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ProdutosDevolvidosCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return ProdutoDevolvido
     */
    @ModelAttribute
    public ProdutoDevolvido ProdutosDevolvidosItemThymeleafController.getProdutoDevolvido(@PathVariable("produtoDevolvido") Long id, Locale locale, HttpMethod method) {
        ProdutoDevolvido produtoDevolvido = null;
        if (HttpMethod.PUT.equals(method)) {
            produtoDevolvido = produtoDevolvidoService.findOneForUpdate(id);
        } else {
            produtoDevolvido = produtoDevolvidoService.findOne(id);
        }
        
        if (produtoDevolvido == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"ProdutoDevolvido", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return produtoDevolvido;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ProdutosDevolvidosItemThymeleafController.show(@ModelAttribute ProdutoDevolvido produtoDevolvido, Model model) {
        model.addAttribute("produtoDevolvido", produtoDevolvido);
        return new ModelAndView("produtosdevolvidos/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ProdutosDevolvidosItemThymeleafController.showInline(@ModelAttribute ProdutoDevolvido produtoDevolvido, Model model) {
        model.addAttribute("produtoDevolvido", produtoDevolvido);
        return new ModelAndView("produtosdevolvidos/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProdutosDevolvidosItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("createdDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("modifiedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProdutosDevolvidosItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<ProdutoDevolvido> ProdutosDevolvidosItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ProdutosDevolvidosItemThymeleafController.getModelName() {
        return "produtoDevolvido";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ProdutosDevolvidosItemThymeleafController.getEditViewPath() {
        return "produtosdevolvidos/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ProdutosDevolvidosItemThymeleafController.getLastVersion(ProdutoDevolvido record) {
        return getProdutoDevolvidoService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ProdutosDevolvidosItemThymeleafController.populateAndGetFormView(ProdutoDevolvido entity, Model model) {
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
    @InitBinder("produtoDevolvido")
    public void ProdutosDevolvidosItemThymeleafController.initProdutoDevolvidoBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(ProdutoDevolvido.class, getProdutoDevolvidoService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ProdutosDevolvidosItemThymeleafController.editForm(@ModelAttribute ProdutoDevolvido produtoDevolvido, Model model) {
        populateForm(model);
        
        model.addAttribute("produtoDevolvido", produtoDevolvido);
        return new ModelAndView("produtosdevolvidos/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ProdutosDevolvidosItemThymeleafController.update(@Valid @ModelAttribute ProdutoDevolvido produtoDevolvido, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        ProdutoDevolvido savedProdutoDevolvido = getConcurrencyTemplate().execute(produtoDevolvido, model, new ConcurrencyCallback<ProdutoDevolvido>() {
            @Override
            public ProdutoDevolvido doInConcurrency(ProdutoDevolvido produtoDevolvido) throws Exception {
                return getProdutoDevolvidoService().save(produtoDevolvido);
            }
        });
        UriComponents showURI = getItemLink().to(ProdutosDevolvidosItemThymeleafLinkFactory.SHOW).with("produtoDevolvido", savedProdutoDevolvido.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtoDevolvido
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ProdutosDevolvidosItemThymeleafController.delete(@ModelAttribute ProdutoDevolvido produtoDevolvido) {
        getProdutoDevolvidoService().delete(produtoDevolvido);
        return ResponseEntity.ok().build();
    }
    
}
