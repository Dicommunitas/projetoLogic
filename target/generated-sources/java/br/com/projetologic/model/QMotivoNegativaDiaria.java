package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMotivoNegativaDiaria is a Querydsl query type for MotivoNegativaDiaria
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMotivoNegativaDiaria extends EntityPathBase<MotivoNegativaDiaria> {

    private static final long serialVersionUID = 1361669820L;

    public static final QMotivoNegativaDiaria motivoNegativaDiaria = new QMotivoNegativaDiaria("motivoNegativaDiaria");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagem = this.<Viagem, QViagem>createSet("viagem", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QMotivoNegativaDiaria(String variable) {
        super(MotivoNegativaDiaria.class, forVariable(variable));
    }

    public QMotivoNegativaDiaria(Path<? extends MotivoNegativaDiaria> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMotivoNegativaDiaria(PathMetadata metadata) {
        super(MotivoNegativaDiaria.class, metadata);
    }

}

