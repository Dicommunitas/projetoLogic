package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QViagem is a Querydsl query type for Viagem
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QViagem extends EntityPathBase<Viagem> {

    private static final long serialVersionUID = 541438638L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QViagem viagem = new QViagem("viagem");

    public final DateTimePath<java.util.Calendar> agenda = createDateTime("agenda", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> agendaReversa = createDateTime("agendaReversa", java.util.Calendar.class);

    public final QVeiculo carreta1;

    public final QVeiculo carreta2;

    public final QVeiculo carretaReversa1;

    public final QVeiculo carretaReversa2;

    public final QVeiculo cavalo;

    public final QVeiculo cavaloReversa;

    public final DateTimePath<java.util.Calendar> chegadaCliente = createDateTime("chegadaCliente", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> chegadaLogisticaReversa = createDateTime("chegadaLogisticaReversa", java.util.Calendar.class);

    public final QCidade cidadeOrigem;

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> dataLancamento = createDateTime("dataLancamento", java.util.Calendar.class);

    public final NumberPath<java.math.BigDecimal> despesaDescarga = createNumber("despesaDescarga", java.math.BigDecimal.class);

    public final QCliente destino;

    public final EnumPath<br.com.projetologic.model.reference.StatusDevolucao> devolucao = createEnum("devolucao", br.com.projetologic.model.reference.StatusDevolucao.class);

    public final QEmbarcador embarcador;

    public final DateTimePath<java.util.Calendar> fimDescarga = createDateTime("fimDescarga", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> fimLogisticaReversa = createDateTime("fimLogisticaReversa", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> fimViagem = createDateTime("fimViagem", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> horaParadaPostoFiscal = createDateTime("horaParadaPostoFiscal", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> horaSaidaPostoFiscal = createDateTime("horaSaidaPostoFiscal", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> identificacaoTransporte = createNumber("identificacaoTransporte", Integer.class);

    public final DateTimePath<java.util.Calendar> inicioDescarga = createDateTime("inicioDescarga", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> inicioEstimado = createDateTime("inicioEstimado", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> inicioReal = createDateTime("inicioReal", java.util.Calendar.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final QMotivoNegativaDescarga motivoNegativaDescarga;

    public final QMotivoNegativaDiaria motivoNegativaDiaria;

    public final QMotivoPerdaAgenda motivoPerdaAgenda;

    public final QMotorista motorista;

    public final QMotorista motoristaReversa;

    public final StringPath observacaoCallCenter = createString("observacaoCallCenter");

    public final StringPath observacaoReversa = createString("observacaoReversa");

    public final SetPath<ProdutoDevolvido, QProdutoDevolvido> produtosDevolvidos = this.<ProdutoDevolvido, QProdutoDevolvido>createSet("produtosDevolvidos", ProdutoDevolvido.class, QProdutoDevolvido.class, PathInits.DIRECT2);

    public final EnumPath<br.com.projetologic.model.reference.Status> statusCustoDescarga = createEnum("statusCustoDescarga", br.com.projetologic.model.reference.Status.class);

    public final EnumPath<br.com.projetologic.model.reference.Status> statusDiaria = createEnum("statusDiaria", br.com.projetologic.model.reference.Status.class);

    public final EnumPath<br.com.projetologic.model.reference.StatusViagem> statusViagem = createEnum("statusViagem", br.com.projetologic.model.reference.StatusViagem.class);

    public final QUsuario usuarioCallCenter;

    public final QUsuario usuarioExpedicao;

    public final QUsuario usuarioLogisticaReversa;

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QViagem(String variable) {
        this(Viagem.class, forVariable(variable), INITS);
    }

    public QViagem(Path<? extends Viagem> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QViagem(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QViagem(PathMetadata metadata, PathInits inits) {
        this(Viagem.class, metadata, inits);
    }

    public QViagem(Class<? extends Viagem> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.carreta1 = inits.isInitialized("carreta1") ? new QVeiculo(forProperty("carreta1"), inits.get("carreta1")) : null;
        this.carreta2 = inits.isInitialized("carreta2") ? new QVeiculo(forProperty("carreta2"), inits.get("carreta2")) : null;
        this.carretaReversa1 = inits.isInitialized("carretaReversa1") ? new QVeiculo(forProperty("carretaReversa1"), inits.get("carretaReversa1")) : null;
        this.carretaReversa2 = inits.isInitialized("carretaReversa2") ? new QVeiculo(forProperty("carretaReversa2"), inits.get("carretaReversa2")) : null;
        this.cavalo = inits.isInitialized("cavalo") ? new QVeiculo(forProperty("cavalo"), inits.get("cavalo")) : null;
        this.cavaloReversa = inits.isInitialized("cavaloReversa") ? new QVeiculo(forProperty("cavaloReversa"), inits.get("cavaloReversa")) : null;
        this.cidadeOrigem = inits.isInitialized("cidadeOrigem") ? new QCidade(forProperty("cidadeOrigem")) : null;
        this.destino = inits.isInitialized("destino") ? new QCliente(forProperty("destino"), inits.get("destino")) : null;
        this.embarcador = inits.isInitialized("embarcador") ? new QEmbarcador(forProperty("embarcador")) : null;
        this.motivoNegativaDescarga = inits.isInitialized("motivoNegativaDescarga") ? new QMotivoNegativaDescarga(forProperty("motivoNegativaDescarga")) : null;
        this.motivoNegativaDiaria = inits.isInitialized("motivoNegativaDiaria") ? new QMotivoNegativaDiaria(forProperty("motivoNegativaDiaria")) : null;
        this.motivoPerdaAgenda = inits.isInitialized("motivoPerdaAgenda") ? new QMotivoPerdaAgenda(forProperty("motivoPerdaAgenda")) : null;
        this.motorista = inits.isInitialized("motorista") ? new QMotorista(forProperty("motorista")) : null;
        this.motoristaReversa = inits.isInitialized("motoristaReversa") ? new QMotorista(forProperty("motoristaReversa")) : null;
        this.usuarioCallCenter = inits.isInitialized("usuarioCallCenter") ? new QUsuario(forProperty("usuarioCallCenter")) : null;
        this.usuarioExpedicao = inits.isInitialized("usuarioExpedicao") ? new QUsuario(forProperty("usuarioExpedicao")) : null;
        this.usuarioLogisticaReversa = inits.isInitialized("usuarioLogisticaReversa") ? new QUsuario(forProperty("usuarioLogisticaReversa")) : null;
    }

}

