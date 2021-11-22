package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QEmbarcador is a Querydsl query type for Embarcador
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QEmbarcador extends EntityPathBase<Embarcador> {

    private static final long serialVersionUID = -1540530101L;

    public static final QEmbarcador embarcador = new QEmbarcador("embarcador");

    public final StringPath cnpj = createString("cnpj");

    public final SetPath<Contrato, QContrato> contratos = this.<Contrato, QContrato>createSet("contratos", Contrato.class, QContrato.class, PathInits.DIRECT2);

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final StringPath endereco = createString("endereco");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath razaoSocial = createString("razaoSocial");

    public final StringPath telefone = createString("telefone");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagens = this.<Viagem, QViagem>createSet("viagens", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QEmbarcador(String variable) {
        super(Embarcador.class, forVariable(variable));
    }

    public QEmbarcador(Path<? extends Embarcador> path) {
        super(path.getType(), path.getMetadata());
    }

    public QEmbarcador(PathMetadata metadata) {
        super(Embarcador.class, metadata);
    }

}

