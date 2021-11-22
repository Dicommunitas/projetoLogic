package br.com.projetologic.service.impl;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.service.api.ClienteService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = ClienteServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = ClienteService.class)
public class ClienteServiceImpl implements ClienteService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Cliente cliente) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
		validaCnpjExistente(cliente, messages);
        
        return messages;
    }

	private void validaCnpjExistente(Cliente cliente, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (cliente.getCnpj() != null) {
			Iterator<Cliente> iteratorClientes = this.findByCnpjEquals(cliente.getCnpj(), null).iterator();
			listaDeErros.add(new MessageI18n("error_cnpj_existente", null));
			while (iteratorClientes.hasNext()) {
				messages.put("cnpj", listaDeErros);
				break;
			}

		}
		
		
	}
}
