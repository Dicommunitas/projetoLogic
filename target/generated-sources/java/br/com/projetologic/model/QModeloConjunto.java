package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QModeloConjunto is a Querydsl query type for ModeloConjunto
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QModeloConjunto extends EntityPathBase<ModeloConjunto> {

    private static final long serialVersionUID = -1298673745L;

    public static final QModeloConjunto modeloConjunto = new QModeloConjunto("modeloConjunto");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final SetPath<Veiculo, QVeiculo> veiculo = this.<Veiculo, QVeiculo>createSet("veiculo", Veiculo.class, QVeiculo.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QModeloConjunto(String variable) {
        super(ModeloConjunto.class, forVariable(variable));
    }

    public QModeloConjunto(Path<? extends ModeloConjunto> path) {
        super(path.getType(), path.getMetadata());
    }

    public QModeloConjunto(PathMetadata metadata) {
        super(ModeloConjunto.class, metadata);
    }

}

