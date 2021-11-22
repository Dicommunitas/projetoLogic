package br.com.projetologic.service.impl;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.service.api.ProdutoDevolvidoService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = ProdutoDevolvidoServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = ProdutoDevolvidoService.class)
public class ProdutoDevolvidoServiceImpl implements ProdutoDevolvidoService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtodevolvido
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(ProdutoDevolvido produtodevolvido) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY

        validaProdutodevolvidoViagemSemDevolucao(produtodevolvido, messages);
        
        return messages;
    }

	private void validaProdutodevolvidoViagemSemDevolucao(ProdutoDevolvido produtodevolvido, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (produtodevolvido.getViagem().getDevolucao() != StatusDevolucao.COM) {
			listaDeErros.add(new MessageI18n("error_produtodevolvido_viagem_sem_devolucao", null));
			messages.put("viagem", listaDeErros);
			messages.put("notaFiscalOrigem", listaDeErros);
			messages.put("notaFiscalDevolucao", listaDeErros);

		}
	}
}
