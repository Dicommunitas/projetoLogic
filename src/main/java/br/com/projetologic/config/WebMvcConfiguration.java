package br.com.projetologic.config;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooWebMvcConfiguration;
import org.springframework.context.ApplicationContextAware;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooWebMvcThymeleafUIConfiguration;

/**
 * = WebMvcConfiguration
 *
 * TODO Auto-generated class documentation
 *
 */
@RooWebMvcConfiguration(defaultLanguage = "pt")
@RooWebMvcThymeleafUIConfiguration
public class WebMvcConfiguration implements ApplicationContextAware {
}
