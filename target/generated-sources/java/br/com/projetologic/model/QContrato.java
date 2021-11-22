package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QContrato is a Querydsl query type for Contrato
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QContrato extends EntityPathBase<Contrato> {

    private static final long serialVersionUID = -1002518007L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QContrato contrato = new QContrato("contrato");

    public final QEmbarcador contratante;

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final NumberPath<java.math.BigDecimal> valorDescarga = createNumber("valorDescarga", java.math.BigDecimal.class);

    public final NumberPath<java.math.BigDecimal> valorDiaria = createNumber("valorDiaria", java.math.BigDecimal.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final DateTimePath<java.util.Calendar> vigenciaFim = createDateTime("vigenciaFim", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> vigenciaInicio = createDateTime("vigenciaInicio", java.util.Calendar.class);

    public QContrato(String variable) {
        this(Contrato.class, forVariable(variable), INITS);
    }

    public QContrato(Path<? extends Contrato> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QContrato(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QContrato(PathMetadata metadata, PathInits inits) {
        this(Contrato.class, metadata, inits);
    }

    public QContrato(Class<? extends Contrato> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.contratante = inits.isInitialized("contratante") ? new QEmbarcador(forProperty("contratante")) : null;
    }

}

