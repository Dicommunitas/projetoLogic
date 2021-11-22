package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QRegra is a Querydsl query type for Regra
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QRegra extends EntityPathBase<Regra> {

    private static final long serialVersionUID = 13658614L;

    public static final QRegra regra = new QRegra("regra");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath nomeRegra = createString("nomeRegra");

    public final SetPath<Usuario, QUsuario> usuarios = this.<Usuario, QUsuario>createSet("usuarios", Usuario.class, QUsuario.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QRegra(String variable) {
        super(Regra.class, forVariable(variable));
    }

    public QRegra(Path<? extends Regra> path) {
        super(path.getType(), path.getMetadata());
    }

    public QRegra(PathMetadata metadata) {
        super(Regra.class, metadata);
    }

}

