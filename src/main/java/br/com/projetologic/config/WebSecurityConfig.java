package br.com.projetologic.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.accept.ContentNegotiationStrategy;

import br.com.projetologic.security.ImplementsUserDetailsService;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private ImplementsUserDetailsService userDetailsService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
			.authorizeRequests()
				.antMatchers("/login**")
					.permitAll()
			.and()
				.formLogin()
					.loginPage("/login")
						.permitAll()
			.and()
				.logout()
					.permitAll()
					
					
			.and()
				.authorizeRequests()
					.antMatchers("/").hasAnyRole("/", "ADMIN")
					/**
			.and()
				.authorizeRequests()
					.antMatchers("/**")
						.permitAll()
	*/	
			.and()
				.authorizeRequests()
					.antMatchers("/cidades/**").hasAnyRole("/cidades/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/clientes/**").hasAnyRole("/clientes/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/embarcadores/**").hasAnyRole("/embarcadores/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/viagens/**").hasAnyRole("/viagens/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/produtosdevolvidos/**").hasAnyRole("/produtosdevolvidos/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/contratos/**").hasAnyRole("/contratos/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/modelosconjuntos/**").hasAnyRole("/modelosconjuntos/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/modelosveiculos/**").hasAnyRole("/modelosveiculos/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/motivosnegativadescarga/**").hasAnyRole("/motivosnegativadescarga/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/motivosnegativadiarias/**").hasAnyRole("/motivosnegativadiarias/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/motivosperdaagenda/**").hasAnyRole("/motivosperdaagenda/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/motoristas/**").hasAnyRole("/motoristas/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/regras/**").hasAnyRole("/regras/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/usuarios/**").hasAnyRole("/usuarios/**", "ADMIN")
			.and()
				.authorizeRequests()
					.antMatchers("/veiculos/**").hasAnyRole("/veiculos/**", "ADMIN")
			.and()
				.authorizeRequests()
					.anyRequest()
						.authenticated();
	
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/public/**");
	}

	/**
	 * https://www.youtube.com/watch?v=FOX0r52_hwE
	 * 
	 * https://www.youtube.com/watch?v=V9AOW1DDfQk
	 * https://www.youtube.com/watch?v=QG9AZNOCj5I
	 * https://www.youtube.com/watch?v=MM14uwVhVhc
	 * 
	 * 
	 * https://stackoverflow.com/questions/42698006/select2-autocomplete-error-on-views-spring-roo-rc1/42780064
	 * https://github.com/jcagarcia/proofs/blob/master/spring-security-and-formatters/src/main/java/org/springframework/roo/petclinic/config/security/SecurityConfiguration.java#L54
	 * 
	 * FIX ME!! By default, this method provided by
	 * {@link WebSecurityConfigurerAdapter} is annotated with @Autowired. That
	 * causes that the {@link ContentNegotiationStrategy} load process registers a
	 * ConversionService before the Formatters have been registered in the Spring
	 * Context.
	 * 
	 * To solve this, override the default method removing the @Autowired annotation
	 * to be able to load the Formatters before the Conversion Service register
	 * them.
	 * 
	 * This doesn't seem to be a good solution...
	 * 
	 */	
	@Override
	public void setContentNegotationStrategy(ContentNegotiationStrategy contentNegotiationStrategy) {
		super.setContentNegotationStrategy(contentNegotiationStrategy);
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder bulder) throws Exception{
		
		bulder.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
		
		/*
		bulder
			.inMemoryAuthentication()
				.withUser("admin").password("123").roles("/*");
				
				
				
			.and()
				.authorizeRequests()
					.antMatchers("/clientes/**").hasAnyRole("/clientes/**", "ADMIN")
					.and()	
					.authorizeRequests()
						.antMatchers("/contratos/**").hasAnyRole("/contratos/**", "ADMIN")
						.and()
						.authorizeRequests()
							.antMatchers("/enbarcadores/**").hasAnyRole("/enbarcadores/**", "ADMIN")
							.and()
							.authorizeRequests()
								.antMatchers("/modelosconjuntos/**").hasAnyRole("/modelosconjuntos/**", "ADMIN")
								.and()
								.authorizeRequests()
									.antMatchers("/modelosveiculos/**").hasAnyRole("/modelosveiculos/**", "ADMIN")
									.and()
									.authorizeRequests()
										.antMatchers("/motivosnegativadescarga/**").hasAnyRole("/motivosnegativadescarga/**", "ADMIN")
										.and()
										.authorizeRequests()
											.antMatchers("/motivosnegativadiarias/**").hasAnyRole("/motivosnegativadiarias/**", "ADMIN")
											.and()
											.authorizeRequests()
												.antMatchers("/motivosperdaagenda/**").hasAnyRole("/motivosperdaagenda/**", "ADMIN")
												.and()
												.authorizeRequests()
													.antMatchers("/motoristas/**").hasAnyRole("/motoristas/**", "ADMIN")
													.and()
													.authorizeRequests()
														.antMatchers("/produtosdevolvidos/**").hasAnyRole("/produtosdevolvidos/**", "ADMIN")
														.and()
														.authorizeRequests()
															.antMatchers("/regras/**").hasAnyRole("/regras/**", "ADMIN")
															.and()
															.authorizeRequests()
																.antMatchers("/usuarios/**").hasAnyRole("/usuarios/**", "ADMIN")
																.and()
																.authorizeRequests()
																	.antMatchers("/veiculos/**").hasAnyRole("/veiculos/**", "ADMIN")
																	.and()
																	.authorizeRequests()
																		.antMatchers("/viagens/**").hasAnyRole("/viagens/**", "ADMIN")
					
				
		 */
	}
	
}
