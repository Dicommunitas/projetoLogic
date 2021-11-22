// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.EmbarcadoresCollectionThymeleafController;
import br.com.projetologic.controller.thymeleaf.EmbarcadoresCollectionThymeleafLinkFactory;
import br.com.projetologic.controller.thymeleaf.EmbarcadoresItemViagensThymeleafController;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.Status;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.model.reference.StatusViagem;
import br.com.projetologic.model.reference.VerdadeiroFalso;
import br.com.projetologic.service.api.EmbarcadorService;
import br.com.projetologic.service.api.ViagemService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect EmbarcadoresItemViagensThymeleafController_Roo_Thymeleaf {
    
    declare @type: EmbarcadoresItemViagensThymeleafController: @Controller;
    
    declare @type: EmbarcadoresItemViagensThymeleafController: @RequestMapping(value = "/embarcadores/{embarcador}/viagens", name = "EmbarcadoresItemViagensThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private EmbarcadorService EmbarcadoresItemViagensThymeleafController.embarcadorService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ViagemService EmbarcadoresItemViagensThymeleafController.viagemService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource EmbarcadoresItemViagensThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<EmbarcadoresCollectionThymeleafController> EmbarcadoresItemViagensThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService EmbarcadoresItemViagensThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param embarcadorService
     * @param viagemService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public EmbarcadoresItemViagensThymeleafController.new(EmbarcadorService embarcadorService, ViagemService viagemService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setEmbarcadorService(embarcadorService);
        setViagemService(viagemService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(EmbarcadoresCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return EmbarcadorService
     */
    public EmbarcadorService EmbarcadoresItemViagensThymeleafController.getEmbarcadorService() {
        return embarcadorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcadorService
     */
    public void EmbarcadoresItemViagensThymeleafController.setEmbarcadorService(EmbarcadorService embarcadorService) {
        this.embarcadorService = embarcadorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ViagemService
     */
    public ViagemService EmbarcadoresItemViagensThymeleafController.getViagemService() {
        return viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemService
     */
    public void EmbarcadoresItemViagensThymeleafController.setViagemService(ViagemService viagemService) {
        this.viagemService = viagemService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource EmbarcadoresItemViagensThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void EmbarcadoresItemViagensThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<EmbarcadoresCollectionThymeleafController> EmbarcadoresItemViagensThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void EmbarcadoresItemViagensThymeleafController.setCollectionLink(MethodLinkBuilderFactory<EmbarcadoresCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService EmbarcadoresItemViagensThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void EmbarcadoresItemViagensThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Embarcador
     */
    @ModelAttribute
    public Embarcador EmbarcadoresItemViagensThymeleafController.getEmbarcador(@PathVariable("embarcador") Long id, Locale locale, HttpMethod method) {
        Embarcador embarcador = null;
        if (HttpMethod.PUT.equals(method)) {
            embarcador = embarcadorService.findOneForUpdate(id);
        } else {
            embarcador = embarcadorService.findOne(id);
        }
        
        if (embarcador == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Embarcador", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return embarcador;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void EmbarcadoresItemViagensThymeleafController.populateFormats(Model model) {
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
    public void EmbarcadoresItemViagensThymeleafController.populateForm(Model model) {
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
     * @param embarcador
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Viagem>> EmbarcadoresItemViagensThymeleafController.datatables(@ModelAttribute Embarcador embarcador, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Viagem> viagens = getViagemService().findByEmbarcador(embarcador, search, pageable);
        long totalViagensCount = getViagemService().countByEmbarcador(embarcador);
        ConvertedDatatablesData<Viagem> data =  new ConvertedDatatablesData<Viagem>(viagens, totalViagensCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatablesByIdsIn", produces = Datatables.MEDIA_TYPE, value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Viagem>> EmbarcadoresItemViagensThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Viagem> viagens = getViagemService().findAllByIdsIn(ids, search, pageable);
        long totalViagensCount = viagens.getTotalElements();
        ConvertedDatatablesData<Viagem> data =  new ConvertedDatatablesData<Viagem>(viagens, totalViagensCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcador
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView EmbarcadoresItemViagensThymeleafController.createForm(@ModelAttribute Embarcador embarcador, Model model) {
        populateForm(model);
        model.addAttribute("viagem", new Viagem());
        return new ModelAndView("embarcadores/viagens/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcador
     * @param viagensToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromViagens", value = "/{viagensToRemove}")
    @ResponseBody
    public ResponseEntity<?> EmbarcadoresItemViagensThymeleafController.removeFromViagens(@ModelAttribute Embarcador embarcador, @PathVariable("viagensToRemove") Long viagensToRemove) {
        getEmbarcadorService().removeFromViagens(embarcador,Collections.singleton(viagensToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcador
     * @param viagensToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromViagensBatch", value = "/batch/{viagensToRemove}")
    @ResponseBody
    public ResponseEntity<?> EmbarcadoresItemViagensThymeleafController.removeFromViagensBatch(@ModelAttribute Embarcador embarcador, @PathVariable("viagensToRemove") Collection<Long> viagensToRemove) {
        getEmbarcadorService().removeFromViagens(embarcador, viagensToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcador
     * @param viagens
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView EmbarcadoresItemViagensThymeleafController.create(@ModelAttribute Embarcador embarcador, @RequestParam(value = "viagensIds", required = false) List<Long> viagens, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (viagens != null) {
            for (Iterator<Long> iterator = viagens.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(!Objects.equals(version, embarcador.getVersion()) && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (viagens != null) {
                embarcador.setViagens(new HashSet<Viagem>(getViagemService().findAll(viagens)));
            }else{
                embarcador.setViagens(new HashSet<Viagem>());
            }
            // Reset the version to prevent update
             embarcador.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("embarcador", embarcador);
            model.addAttribute("concurrency", true);
            return new ModelAndView("embarcadores/viagens/create");
        }else if(!Objects.equals(version, embarcador.getVersion()) && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("embarcador", embarcador);
            model.addAttribute("concurrency", false);
            return new ModelAndView("embarcadores/viagens/create");
        }
        getEmbarcadorService().setViagens(embarcador,viagens);
        return new ModelAndView("redirect:" + getCollectionLink().to(EmbarcadoresCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
