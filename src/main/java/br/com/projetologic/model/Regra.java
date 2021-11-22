package br.com.projetologic.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import org.springframework.roo.addon.plural.annotations.RooPlural;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import io.springlets.data.web.validation.MessageI18n;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import javax.el.ELException;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.PreRemove;

/**
 * = Regra
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{nomeRegra}")
@RooEquals(isJpaEntity = true)
@RooPlural("Regras")
@RooJpaAudit
public class Regra implements GrantedAuthority{

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(unique = true)
    private String nomeRegra;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @CreatedDate
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar createdDate;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @CreatedBy
    private String createdBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedDate
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar modifiedDate;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @LastModifiedBy
    private String modifiedBy;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToMany(fetch = FetchType.LAZY)
    private Set<Usuario> usuarios = new HashSet<Usuario>();

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.nomeRegra;
	}
    
/*
	@PrePersist //invocado sempre antes de Inserir uma entidade (ou seja comando sql INSERT)
	@PostPersist //invocado sempre apos Inserir uma entidade 
	@PreUpdate //invocado sempre antes da entidade ter seus dados atualizados (ou seja comando sql UPDATE)
	@PostUpdate //invocada sempre apos a entidade ter seus dados atualizados
	@PreRemove //invocado sempre antes de uma entidade ser deletada (ou seja comando sql DELETE)
	@PostRemove //invocada sempre apos uma entidade ser deletada...
	@PostLoad //invocado apos uma entidade ser carregada (ou seja comando sql SELECT)
	//@PreLoad não existe

*/

    @PreRemove
    public void verificarUsuarioAdmin() {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();

		if (!currentPrincipalName.equals("admin")) {
    		throw new RuntimeException("Não é possível deletar");
		}
    		
    }
}