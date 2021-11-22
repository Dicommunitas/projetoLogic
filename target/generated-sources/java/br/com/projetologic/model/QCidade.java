package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCidade is a Querydsl query type for Cidade
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCidade extends EntityPathBase<Cidade> {

    private static final long serialVersionUID = -2431663L;

    public static final QCidade cidade = new QCidade("cidade");

    public final SetPath<Cliente, QCliente> clientes = this.<Cliente, QCliente>createSet("clientes", Cliente.class, QCliente.class, PathInits.DIRECT2);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath nome = createString("nome");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagens = this.<Viagem, QViagem>createSet("viagens", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QCidade(String variable) {
        super(Cidade.class, forVariable(variable));
    }

    public QCidade(Path<? extends Cidade> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCidade(PathMetadata metadata) {
        super(Cidade.class, metadata);
    }

}

