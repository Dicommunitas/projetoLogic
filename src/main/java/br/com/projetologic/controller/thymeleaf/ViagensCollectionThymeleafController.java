package br.com.projetologic.controller.thymeleaf;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.model.reference.StatusViagem;
import br.com.projetologic.model.reference.VerdadeiroFalso;
import br.com.projetologic.repository.ViagemRepositoryImpl;
import br.com.projetologic.service.impl.ViagemServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;

import java.util.Iterator;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * = ViagensCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Viagem.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ViagensCollectionThymeleafController {
	
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatables", value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Viagem>> datatables(DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
            	
    	search = null;
    	Page<Viagem> viagens = getViagemService().findAll(search, pageable);
        long totalViagensCount = viagens.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalViagensCount = getViagemService().count();
        }
        ConvertedDatatablesData<Viagem> datatablesData = new ConvertedDatatablesData<Viagem>(viagens, totalViagensCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }
    
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatablesListReversa", value = "/dtListReversa")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Viagem>> datatablesListReversa(DatatablesColumns datatablesColumns, 
    		GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
    	search=null;
        Page<Viagem> viagens = getViagemService().findByDevolucaoEquals(StatusDevolucao.COM, pageable);
        long totalViagensCount = viagens.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalViagensCount = getViagemService().count();
        }
        ConvertedDatatablesData<Viagem> datatablesData = new ConvertedDatatablesData<Viagem>(viagens, 
        		totalViagensCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }


    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @return ModelAndView
     */
    @GetMapping("list_reversa")
    public ModelAndView listReversa(Model model) {
        return new ModelAndView("viagens/list_reversa");
    }


    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @param viagem
     * @return ModelAndView
     */
    @GetMapping("charts")
    public ModelAndView charts(Model model, Viagem viagem) {
        populateForm(model);
        
        Pageable pageable = new PageRequest(0, 100);
        Page<Viagem> pageViagens;
        /**
        if (viagem.getInicioReal() != null) {
            pageViagens = getViagemService().findByInicioRealAfter(viagem.getInicioReal(), pageable);
		}else {
	        pageViagens = getViagemService().findAll(null, pageable);
		}
		*/
        pageViagens = getViagemService().findByFimViagemNull(pageable);

        setCharts_Chart0_Chart1(model, pageViagens);
        setCharts_Chart2_Chart3(model, pageViagens);
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("viagem", viagem);

        return new ModelAndView("viagens/charts");
    }
    
    private void setCharts_Chart0_Chart1(Model model, Page<Viagem> pageViagens) {
    	int pararamEmPostoFiscal = 0;
    	int paradasEmPostoFiscal = 0;
    	int naoPararamEmPostoFiscal = 0;
    	int pendente = 0;
    	int prevista = 0;
    	int emTransito = 0;
    	int atrasada = 0;
    	int noCliente = 0;
        
		Iterator<Viagem> viagensIterator = pageViagens.iterator();
		while (viagensIterator.hasNext()) {

	        Viagem v = viagensIterator.next();
	        
			if (v.getChegadaCliente() != null) {
				if (v.getHoraParadaPostoFiscal() == null) {
					naoPararamEmPostoFiscal++;
				}else {
					pararamEmPostoFiscal++;
				}				
			}
			if (v.getStatusViagem() == StatusViagem.EM_POSTO_FISCAL) {
				paradasEmPostoFiscal++;
			}else if (v.getStatusViagem() == StatusViagem.PENDENTE) {
				pendente++;
			}else if (v.getStatusViagem() == StatusViagem.PREVISTA) {
				prevista++;
			}else if (v.getStatusViagem() == StatusViagem.EM_TRANSITO) {
				emTransito++;
			}else if (v.getStatusViagem() == StatusViagem.ATRASADA) {
				atrasada++;
			}else if (v.getStatusViagem() == StatusViagem.NO_CLIENTE) {
				noCliente++;
			}
		}
    	pararamEmPostoFiscal += paradasEmPostoFiscal;
        
        model.addAttribute("pendente", pendente);
        model.addAttribute("prevista", prevista);
        model.addAttribute("emTransito", emTransito);
        model.addAttribute("atrasada", atrasada);
        model.addAttribute("noCliente", noCliente);
        model.addAttribute("pararamEmPostoFiscal", pararamEmPostoFiscal);
        model.addAttribute("naoPararamEmPostoFiscal", naoPararamEmPostoFiscal);
        model.addAttribute("paradasEmPostoFiscal", paradasEmPostoFiscal);
    	
    }
    
    private void setCharts_Chart2_Chart3(Model model, Page<Viagem> pageViagens) {
    	
    	int agendaPerdeu = 0;
    	int agendaNaoPerdeu = 0;
    	int agendaNaoSabe = 0;
        
		Iterator<Viagem> viagensIterator = pageViagens.iterator();
		while (viagensIterator.hasNext()) {

	        Viagem v = viagensIterator.next();
	        
	        
			if (v.getPerdeuAgenda() == VerdadeiroFalso.VERDADEIRO) {
				agendaPerdeu++;
			}else if (v.getPerdeuAgenda() == VerdadeiroFalso.FALSO) {
				agendaNaoPerdeu++;
			}else {
				agendaNaoSabe++;
			}
		}
        
        model.addAttribute("agendaPerdeu", agendaPerdeu);
        model.addAttribute("agendaNaoPerdeu", agendaNaoPerdeu);
        model.addAttribute("agendaNaoSabe", agendaNaoSabe);
    	
    }
    
    
}
