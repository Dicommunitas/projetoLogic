package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QModeloVeiculo is a Querydsl query type for ModeloVeiculo
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QModeloVeiculo extends EntityPathBase<ModeloVeiculo> {

    private static final long serialVersionUID = 458068988L;

    public static final QModeloVeiculo modeloVeiculo = new QModeloVeiculo("modeloVeiculo");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final SetPath<Veiculo, QVeiculo> veiculo = this.<Veiculo, QVeiculo>createSet("veiculo", Veiculo.class, QVeiculo.class, PathInits.DIRECT2);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QModeloVeiculo(String variable) {
        super(ModeloVeiculo.class, forVariable(variable));
    }

    public QModeloVeiculo(Path<? extends ModeloVeiculo> path) {
        super(path.getType(), path.getMetadata());
    }

    public QModeloVeiculo(PathMetadata metadata) {
        super(ModeloVeiculo.class, metadata);
    }

}

