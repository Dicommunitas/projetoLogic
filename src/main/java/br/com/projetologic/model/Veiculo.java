package br.com.projetologic.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import org.springframework.roo.addon.plural.annotations.RooPlural;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import br.com.projetologic.model.reference.TipoVeiculo;
import br.com.projetologic.model.reference.VerdadeiroFalso;

import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = Veiculo
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{tipo} - #{placa} (#{proprietario})")
@RooEquals(isJpaEntity = true)
@RooPlural("Veiculos")
@RooJpaAudit
public class Veiculo {

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
    @Enumerated
    private TipoVeiculo tipo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Column(unique = true)
    @Pattern(regexp = "[a-zA-Z]{3}\\-\\d{4}")
    private String placa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private ModeloVeiculo modeloVeiculo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String proprietario;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private VerdadeiroFalso ativo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private ModeloConjunto modeloConjunto;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "cavalo")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCavalo = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "carreta1")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCarreta1 = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "carreta2")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCarreta2 = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "cavaloReversa")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCavaloReversa = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "carretaReversa1")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCarretaReversa1 = new HashSet<Viagem>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "carretaReversa2")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> ViagensCarretaReversa2 = new HashSet<Viagem>();

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
}