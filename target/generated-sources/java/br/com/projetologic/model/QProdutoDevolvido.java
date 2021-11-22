package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QProdutoDevolvido is a Querydsl query type for ProdutoDevolvido
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QProdutoDevolvido extends EntityPathBase<ProdutoDevolvido> {

    private static final long serialVersionUID = -259128028L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QProdutoDevolvido produtoDevolvido = new QProdutoDevolvido("produtoDevolvido");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath descricao = createString("descricao");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath notaFiscalDevolucao = createString("notaFiscalDevolucao");

    public final StringPath notaFiscalOrigem = createString("notaFiscalOrigem");

    public final NumberPath<Integer> quantidade = createNumber("quantidade", Integer.class);

    public final StringPath referencia = createString("referencia");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final QViagem viagem;

    public QProdutoDevolvido(String variable) {
        this(ProdutoDevolvido.class, forVariable(variable), INITS);
    }

    public QProdutoDevolvido(Path<? extends ProdutoDevolvido> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QProdutoDevolvido(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QProdutoDevolvido(PathMetadata metadata, PathInits inits) {
        this(ProdutoDevolvido.class, metadata, inits);
    }

    public QProdutoDevolvido(Class<? extends ProdutoDevolvido> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.viagem = inits.isInitialized("viagem") ? new QViagem(forProperty("viagem"), inits.get("viagem")) : null;
    }

}

