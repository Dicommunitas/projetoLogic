package br.com.projetologic.service.impl;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.service.api.EmbarcadorService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = EmbarcadorServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = EmbarcadorService.class)
public class EmbarcadorServiceImpl implements EmbarcadorService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param embarcador
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Embarcador embarcador) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
		validaCnpjExistente(embarcador, messages);
        
        return messages;
    }

	private void validaCnpjExistente(Embarcador embarcador, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();


		if (embarcador.getCnpj() != null) {
			Iterator<Embarcador> iteratorEmbarcadores = this.findByCnpjEquals(embarcador.getCnpj(), null).iterator();
			listaDeErros.add(new MessageI18n("error_cnpj_existente", null));
			while (iteratorEmbarcadores.hasNext()) {
				messages.put("cnpj", listaDeErros);
				break;
			}

		}
		
	}
}
