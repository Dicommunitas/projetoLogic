package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QVeiculo is a Querydsl query type for Veiculo
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QVeiculo extends EntityPathBase<Veiculo> {

    private static final long serialVersionUID = -502503550L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QVeiculo veiculo = new QVeiculo("veiculo");

    public final EnumPath<br.com.projetologic.model.reference.VerdadeiroFalso> ativo = createEnum("ativo", br.com.projetologic.model.reference.VerdadeiroFalso.class);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final QModeloConjunto modeloConjunto;

    public final QModeloVeiculo modeloVeiculo;

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath placa = createString("placa");

    public final StringPath proprietario = createString("proprietario");

    public final EnumPath<br.com.projetologic.model.reference.TipoVeiculo> tipo = createEnum("tipo", br.com.projetologic.model.reference.TipoVeiculo.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> ViagensCarreta1 = this.<Viagem, QViagem>createSet("ViagensCarreta1", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> ViagensCarreta2 = this.<Viagem, QViagem>createSet("ViagensCarreta2", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> ViagensCarretaReversa1 = this.<Viagem, QViagem>createSet("ViagensCarretaReversa1", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> ViagensCarretaReversa2 = this.<Viagem, QViagem>createSet("ViagensCarretaReversa2", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> ViagensCavalo = this.<Viagem, QViagem>createSet("ViagensCavalo", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> ViagensCavaloReversa = this.<Viagem, QViagem>createSet("ViagensCavaloReversa", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QVeiculo(String variable) {
        this(Veiculo.class, forVariable(variable), INITS);
    }

    public QVeiculo(Path<? extends Veiculo> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QVeiculo(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QVeiculo(PathMetadata metadata, PathInits inits) {
        this(Veiculo.class, metadata, inits);
    }

    public QVeiculo(Class<? extends Veiculo> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.modeloConjunto = inits.isInitialized("modeloConjunto") ? new QModeloConjunto(forProperty("modeloConjunto")) : null;
        this.modeloVeiculo = inits.isInitialized("modeloVeiculo") ? new QModeloVeiculo(forProperty("modeloVeiculo")) : null;
    }

}

