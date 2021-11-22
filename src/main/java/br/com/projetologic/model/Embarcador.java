package br.com.projetologic.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import org.springframework.roo.addon.plural.annotations.RooPlural;

import br.com.projetologic.model.reference.Status;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;

import java.math.BigDecimal;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.br.CNPJ;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = Embarcador
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{razaoSocial} (#{cnpj})")
@RooEquals(isJpaEntity = true)
@RooPlural("Embarcadores")
@RooJpaAudit
public class Embarcador {

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
    @Pattern(regexp = "\\d{2}\\.\\d{3}\\.\\d{3}\\/\\d{4}\\-\\d{2}")
    @CNPJ
    private String cnpj;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String razaoSocial;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String endereco;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Pattern(regexp = "\\d{4}|^(\\(0?([1-9a-zA-Z][0-9a-zA-Z])?[1-9]\\d\\) ?|0?([1-9a-zA-Z][0-9a-zA-Z])?[1-9]\\d[ .-]?)?(9|9[ .-])?[2-9]\\d{3}[ .-]?\\d{4}")
    private String telefone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private Integer diariasNegadas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private Integer diariasAutorizadas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private Integer descargasNegadas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private Integer descargasAutorizadas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private BigDecimal faturamentoDiarias;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private BigDecimal faturamentoDescargas;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private BigDecimal faturamento;
    
    /**
     * Gets faturamento value
     * 
     * @return BigDecimal
     */
    public BigDecimal getFaturamento() {
    	this.diariasAutorizadas= 0;
    	this.diariasNegadas = 0;
    	this.faturamentoDiarias = new BigDecimal("0");
    	this.descargasAutorizadas = 0;
    	this.descargasNegadas = 0;
    	this.faturamentoDescargas = new BigDecimal("0");

    	this.viagens.forEach(new Consumer<Viagem>() {
			@Override
			public void accept(Viagem viagen) {
				if(viagen.getStatusDiaria() == Status.AUTORIZADO){
			    	diariasAutorizadas = diariasAutorizadas + viagen.getNumeroDiarias();
			    	faturamentoDiarias = faturamentoDiarias.add(
			    			viagen.getEmbarcador().getContratoVigente(viagen.getDataLancamento()).getValorDiaria()
			    			.multiply(new BigDecimal(viagen.getNumeroDiarias()))
			    			);
			    	
				}
				if(viagen.getStatusDiaria() == Status.NEGADO){
					diariasNegadas = diariasNegadas + viagen.getNumeroDiarias();
				}
				

				if(viagen.getStatusCustoDescarga() == Status.AUTORIZADO){
					descargasAutorizadas = descargasAutorizadas + 1;
					faturamentoDescargas = faturamentoDescargas.add(
			    			viagen.getEmbarcador().getContratoVigente(viagen.getDataLancamento()).getValorDescarga()
			    			);
			    	
				}
				if(viagen.getStatusCustoDescarga() == Status.NEGADO){
					descargasNegadas = descargasNegadas + 1;
				}
			}
		});
    	
    	this.faturamento = faturamentoDiarias.add(faturamentoDescargas);
        return this.faturamento;
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private Contrato contratoVigente;

    /**
	 * TODO Auto-generated method documentation
	 *
	 * @return Contrato
	 */
	public Contrato getContratoVigente(final Calendar dataLancamento) {
		if (!contratos.isEmpty()) {
			boolean vigente = contratos.stream().anyMatch(new Predicate<Contrato>() {
				@Override
				public boolean test(Contrato c) {
					contratoVigente = c;
					return c.getVigente(dataLancamento) != null;
				}
			});
			if (vigente) {
				return contratoVigente;
			}
		}
		return null;
	}

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "contratante")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Contrato> contratos = new HashSet<Contrato>();

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "embarcador")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Viagem> viagens = new HashSet<Viagem>();

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