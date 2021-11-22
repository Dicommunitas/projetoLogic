package br.com.projetologic.web;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleafMainController;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Collection;
import java.util.function.Predicate;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * = MainController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooThymeleafMainController
public class MainController {

    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @return String
     */
    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        return "login";
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @return String
     */
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Collection<? extends GrantedAuthority> currentPrincipalAuthorities = authentication.getAuthorities();
		
		boolean isAdmin = currentPrincipalAuthorities.stream().anyMatch(new Predicate<GrantedAuthority>() {
			@Override
			public boolean test(GrantedAuthority x) {
				if (x.getAuthority().equals("ROLE_ADMIN") ) {
					return true;
				}else {
					return false;
				}
			}
		});
		
		if (isAdmin) {
	        return "viagens/list_index_admin";
		}
		
		return "index";
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @return String
     */
    @GetMapping("/contato")
    public String contato(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        return "contato";
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param model
     * @return String
     */
    @GetMapping("/ajuda")
    public String ajuda(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        return "ajuda";
    }
}
