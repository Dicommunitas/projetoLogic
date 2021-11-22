package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QCliente is a Querydsl query type for Cliente
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCliente extends EntityPathBase<Cliente> {

    private static final long serialVersionUID = 15252845L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QCliente cliente = new QCliente("cliente");

    public final StringPath bairro = createString("bairro");

    public final QCidade cidade;

    public final StringPath cnpj = createString("cnpj");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath nome = createString("nome");

    public final NumberPath<Integer> numero = createNumber("numero", Integer.class);

    public final StringPath rua = createString("rua");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagens = this.<Viagem, QViagem>createSet("viagens", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QCliente(String variable) {
        this(Cliente.class, forVariable(variable), INITS);
    }

    public QCliente(Path<? extends Cliente> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QCliente(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QCliente(PathMetadata metadata, PathInits inits) {
        this(Cliente.class, metadata, inits);
    }

    public QCliente(Class<? extends Cliente> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.cidade = inits.isInitialized("cidade") ? new QCidade(forProperty("cidade")) : null;
    }

}

