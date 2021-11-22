package br.com.projetologic.service.impl;
import br.com.projetologic.model.Regra;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.service.api.RegraService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * = RegraServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = RegraService.class)
public class RegraServiceImpl implements RegraService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regra
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Regra regra) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
		valida_statusDevolucao(regra, messages);
        
        return messages;
    }

	public void valida_statusDevolucao(Regra regra, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();

		if (!currentPrincipalName.equals("admin")) {
			listaDeErros.add(new MessageI18n("erro_regra_somente_admin", null));
			messages.put("nomeRegra", listaDeErros);
		}
	}
}
