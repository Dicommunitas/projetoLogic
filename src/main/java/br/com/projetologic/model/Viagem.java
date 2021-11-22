package br.com.projetologic.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import org.springframework.roo.addon.plural.annotations.RooPlural;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import io.springlets.format.EntityFormat;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import java.util.Set;
import java.util.function.Predicate;

import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;

import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;


import java.math.BigDecimal;
import br.com.projetologic.model.reference.Status;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.model.reference.StatusViagem;
import br.com.projetologic.model.reference.VerdadeiroFalso;

import javax.persistence.Enumerated;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.roo.addon.jpa.annotations.audit.RooJpaAudit;

/**
 * = Viagem
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{cidadeOrigem} --> #{destino}")
@RooEquals(isJpaEntity = true)
@RooPlural("Viagens")
@RooJpaAudit
public class Viagem {


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
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Embarcador embarcador;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Cidade cidadeOrigem;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar dataLancamento;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull(message = "{viagem.identificacaoTransporte.notNull}")
    @NumberFormat
    private Integer identificacaoTransporte;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Cliente destino;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar agenda;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Motorista motorista;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo cavalo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo carreta1;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo carreta2;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar inicioEstimado;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Usuario usuarioExpedicao;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar inicioReal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private StatusViagem statusViagem;

    /**
     * TODO Auto-generated method documentation
     *
     * @return StatusViagem
     */
    public StatusViagem getStatusViagem() {
        if ((inicioEstimado.getTime().before(Calendar.getInstance().getTime())) && (inicioReal == null)) {
            this.statusViagem = StatusViagem.PENDENTE;
        } else if ((inicioEstimado.getTime().after(Calendar.getInstance().getTime())) && (inicioReal == null)) {
            this.statusViagem = StatusViagem.PREVISTA;
        } else if (inicioEstimado.before(inicioReal)) {
            this.statusViagem = StatusViagem.ATRASADA;
        } else if (inicioEstimado.after(inicioReal) || inicioEstimado.equals(inicioReal)) {
            this.statusViagem = StatusViagem.EM_TRANSITO;
        }
        if ((horaParadaPostoFiscal != null) && (horaSaidaPostoFiscal == null)) {
            this.statusViagem = StatusViagem.EM_POSTO_FISCAL;
        }
        if ((chegadaCliente != null) && (fimViagem == null)) {
            this.statusViagem = StatusViagem.NO_CLIENTE;
        }
        return this.statusViagem;
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar horaParadaPostoFiscal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar horaSaidaPostoFiscal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar chegadaCliente;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Transient
    private VerdadeiroFalso perdeuAgenda;

    /**
     * TODO Auto-generated method documentation
     *
     * @return VerdadeiroFalso
     */
    public VerdadeiroFalso getPerdeuAgenda() {
        if ((chegadaCliente != null) && (agenda != null)) {
            if ((chegadaCliente.compareTo(agenda)) > 0) {
                return VerdadeiroFalso.VERDADEIRO;
            } else {
                return VerdadeiroFalso.FALSO;
            }
        } else {
            return null;
        }
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private MotivoPerdaAgenda motivoPerdaAgenda;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar inicioDescarga;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar fimDescarga;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar fimViagem;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat(pattern="#####0.00")
    @Digits(integer = 6, fraction = 2)
    private BigDecimal despesaDescarga;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private Status statusCustoDescarga;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private MotivoNegativaDescarga motivoNegativaDescarga;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat
    @Transient
    private Integer numeroDiarias;

    /**
     * TODO Auto-generated method documentation
     *
     * @return Integer
     */
    public Integer getNumeroDiarias() {
		if (fimViagem != null && agenda != null) {
			Float data = (float) ((fimViagem.get(Calendar.MINUTE) + fimViagem.get(Calendar.HOUR)*60 + fimViagem.get(Calendar.DATE)*24*60)
					- (agenda.get(Calendar.MINUTE) + agenda.get(Calendar.HOUR)*60 + agenda.get(Calendar.DATE)*24*60));
			int diarias = (int) (Math.ceil(data/(24*60)));
			if (diarias < 0) {
				return 0;
			}
			return diarias;
		} else {
			return 0;
		}
    }

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private Status statusDiaria;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private MotivoNegativaDiaria motivoNegativaDiaria;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private StatusDevolucao devolucao;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String observacaoCallCenter;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Usuario usuarioCallCenter;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar chegadaLogisticaReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar agendaReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Motorista motoristaReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo cavaloReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo carretaReversa1;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Veiculo carretaReversa2;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy - HH:mm")
    private Calendar fimLogisticaReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String observacaoReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @EntityFormat
    private Usuario usuarioLogisticaReversa;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "viagem")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<ProdutoDevolvido> produtosDevolvidos = new HashSet<ProdutoDevolvido>();

    /**
     * TODO Auto-generated method documentation
     *
     * @return VerdadeiroFalso
     */
    public VerdadeiroFalso getPossuiProdutoDevolvido() {
		if (this.produtosDevolvidos.isEmpty()) {
			return VerdadeiroFalso.FALSO;
		} else {
			return VerdadeiroFalso.VERDADEIRO;
		}
    }

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

    @PrePersist
    @PreUpdate
    public void atualizarStatusViagem() {
    		this.getStatusViagem();
    }

    @PreRemove
    public void verificarUsuarioCallCenterAdmin() {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Collection<? extends GrantedAuthority> currentPrincipalAuthorities = authentication.getAuthorities();
		
		boolean isExpedicaoAdmin = currentPrincipalAuthorities.stream().anyMatch(new Predicate<GrantedAuthority>() {
			@Override
			public boolean test(GrantedAuthority x) {
				if (x.getAuthority().equals("ROLE_ADMIN") || x.getAuthority().equals("ROLE_/viagens_expedição")) {
					return true;
				}else {
					return false;
				}
			}
		});
		
		if (!isExpedicaoAdmin) {
    		throw new RuntimeException("Não é possível deletar");
		}
    		
    }
}
