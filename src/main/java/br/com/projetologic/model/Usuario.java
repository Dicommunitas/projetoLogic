package br.com.projetologic.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import org.springframework.roo.addon.plural.annotations.RooPlural;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import java.util.Calendar;
import java.util.Collection;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.br.CPF;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;
import javax.persistence.ManyToMany;

/**
 * = Usuario
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{nome} - #{cpf}")
@RooEquals(isJpaEntity = true)
@RooPlural("Usuarios")
@RooJpaAudit
public class Usuario implements UserDetails {

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
    private String nome;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(unique = true)
    private String login;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String senha;
    
    @Transient
    protected String senha1;
    
    /**
     * Gets senha1 value
     * 
     * @return String
     */
    public String getSenha1() {
        return null;
    }
    
    /**
     * Gets senha value
     * 
     * @return String
     */
    public String getSenha() {
        return "*******";
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String confirmaSenha;
    
    @Transient
    protected String senha2;
    
    /**
     * Gets senha2 value
     * 
     * @return String
     */
    public String getSenha2() {
        return null;
    }
    
    /**
     * Gets confirmaSenha value
     * 
     * @return String
     */
    public String getConfirmaSenha() {
        return "*******";
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(unique = true)
    @CPF
    private String cpf;
    
    /**
     * 
     * @return Boolean
     */
    public Boolean validaSenhas() {
    	if ((senha1.equals(senha2))&&(!senha1.equals("*******"))) {
            return true;
		}
        return false;
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "usuarioExpedicao")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> viagensExpedicao = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "usuarioCallCenter")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> viagensCallCenter = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "usuarioLogisticaReversa")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> viagensLogisticaReversa = new HashSet<Viagem>();

    /**
	 * TODO Auto-generated attribute documentation
	 *
	 */
	@ManyToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "usuarios")
	@RooJpaRelation(type = JpaRelationType.AGGREGATION)
	private Set<Regra> acessos = new HashSet<Regra>();

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

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // TODO Auto-generated method stub
        return this.acessos;
    }

    @Override
    public String getPassword() {
        // TODO Auto-generated method stub
        return this.senha;
    }

    @Override
    public String getUsername() {
        // TODO Auto-generated method stub
        return this.nome;
    }

    /**
     * TODO Auto-generated method documentation
     *
     * @param senha
     */
    public void setSenha(String senha) {
    	senha1=senha;
        this.senha = new BCryptPasswordEncoder().encode(senha);
    }
    
    /**
     * Sets confirmaSenha value
     * 
     * @param confirmaSenha
     */
    public void setConfirmaSenha(String confirmaSenha) {
    	senha2=confirmaSenha;
        this.confirmaSenha = new BCryptPasswordEncoder().encode(confirmaSenha);
    }

    @Override
    public boolean isAccountNonExpired() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public boolean isEnabled() {
        // TODO Auto-generated method stub
        return true;
    }
}