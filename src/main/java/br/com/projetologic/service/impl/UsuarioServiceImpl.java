package br.com.projetologic.service.impl;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.service.api.UsuarioService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = UsuarioServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = UsuarioService.class)
public class UsuarioServiceImpl implements UsuarioService {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param usuario
     * @return Map
     */
    public Map<String, List<MessageI18n>> validate(Usuario usuario) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY

		valida_senhas(usuario, messages);        
		validaLoginExistente(usuario, messages);
		validaCpfExistente(usuario, messages);
        
        return messages;
    }

	private void validaCpfExistente(Usuario usuario, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();


		if (usuario.getCpf() != null) {
			Iterator<Usuario> iteratorUsuarios = this.findByCpfEquals(usuario.getCpf(), null).iterator();
			listaDeErros.add(new MessageI18n("error_cpf_existente", null));
			while (iteratorUsuarios.hasNext()) {
				messages.put("cpf", listaDeErros);
				break;
			}

		}
		
	}

	private void validaLoginExistente(Usuario usuario, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();


		if (usuario.getLogin() != null) {
			Iterator<Usuario> iteratorUsuarios = this.findByLogin(usuario.getLogin(), null).iterator();
			listaDeErros.add(new MessageI18n("error_login_existente", null));
			while (iteratorUsuarios.hasNext()) {
				messages.put("login", listaDeErros);
				break;
			}

		}
		
	}

	private void valida_senhas(Usuario usuario, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (!usuario.validaSenhas()) {
				listaDeErros.add(new MessageI18n("error_senhas_diferentes_ou_fracas", null));
				messages.put("senha", listaDeErros);
				messages.put("confirmaSenha", listaDeErros);
		}
	}
}
