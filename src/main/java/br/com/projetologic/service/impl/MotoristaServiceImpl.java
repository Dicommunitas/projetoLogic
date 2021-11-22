package br.com.projetologic.service.impl;
import br.com.projetologic.model.Motorista;
import br.com.projetologic.service.api.MotoristaService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = MotoristaServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = MotoristaService.class)
public class MotoristaServiceImpl implements MotoristaService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motorista
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Motorista motorista) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
}
