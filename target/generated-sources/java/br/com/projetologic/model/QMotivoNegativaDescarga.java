package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMotivoNegativaDescarga is a Querydsl query type for MotivoNegativaDescarga
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMotivoNegativaDescarga extends EntityPathBase<MotivoNegativaDescarga> {

    private static final long serialVersionUID = -154122486L;

    public static final QMotivoNegativaDescarga motivoNegativaDescarga = new QMotivoNegativaDescarga("motivoNegativaDescarga");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagem = this.<Viagem, QViagem>createSet("viagem", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QMotivoNegativaDescarga(String variable) {
        super(MotivoNegativaDescarga.class, forVariable(variable));
    }

    public QMotivoNegativaDescarga(Path<? extends MotivoNegativaDescarga> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMotivoNegativaDescarga(PathMetadata metadata) {
        super(MotivoNegativaDescarga.class, metadata);
    }

}

