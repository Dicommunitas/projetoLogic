package br.com.projetologic.service.impl;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.service.api.VeiculoService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = VeiculoServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = VeiculoService.class)
public class VeiculoServiceImpl implements VeiculoService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param veiculo
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Veiculo veiculo) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
}
