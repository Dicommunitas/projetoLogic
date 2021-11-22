package br.com.projetologic.security;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.projetologic.model.Usuario;
import br.com.projetologic.repository.UsuarioRepository;

/**
 * = ImplementsUserDetailsService
 *
 * TODO Auto-generated class documentation
 *
 */
@Repository
@Transactional
public class ImplementsUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UsuarioRepository ur;

	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		Usuario usuario = ur.findByLogin(login);
		if (usuario == null) {
			throw new UsernameNotFoundException("Usuário não encontrado!");
		}
		UserDetails userDetails = new UserCustomizando(usuario.getUsername(),usuario.getId(), usuario.getPassword(), true, true, true, true, usuario.getAuthorities());
		return userDetails;
	}
}
