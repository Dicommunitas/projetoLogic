package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMotivoPerdaAgenda is a Querydsl query type for MotivoPerdaAgenda
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMotivoPerdaAgenda extends EntityPathBase<MotivoPerdaAgenda> {

    private static final long serialVersionUID = -37357559L;

    public static final QMotivoPerdaAgenda motivoPerdaAgenda = new QMotivoPerdaAgenda("motivoPerdaAgenda");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagem = this.<Viagem, QViagem>createSet("viagem", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QMotivoPerdaAgenda(String variable) {
        super(MotivoPerdaAgenda.class, forVariable(variable));
    }

    public QMotivoPerdaAgenda(Path<? extends MotivoPerdaAgenda> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMotivoPerdaAgenda(PathMetadata metadata) {
        super(MotivoPerdaAgenda.class, metadata);
    }

}

