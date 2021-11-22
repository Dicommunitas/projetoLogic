package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMotorista is a Querydsl query type for Motorista
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMotorista extends EntityPathBase<Motorista> {

    private static final long serialVersionUID = -1020815937L;

    public static final QMotorista motorista = new QMotorista("motorista");

    public final StringPath cpf = createString("cpf");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final DateTimePath<java.util.Calendar> dataNascimento = createDateTime("dataNascimento", java.util.Calendar.class);

    public final StringPath email = createString("email");

    public final StringPath endereco = createString("endereco");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath nome = createString("nome");

    public final StringPath rg = createString("rg");

    public final StringPath telefone1 = createString("telefone1");

    public final StringPath telefone2 = createString("telefone2");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagem = this.<Viagem, QViagem>createSet("viagem", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QMotorista(String variable) {
        super(Motorista.class, forVariable(variable));
    }

    public QMotorista(Path<? extends Motorista> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMotorista(PathMetadata metadata) {
        super(Motorista.class, metadata);
    }

}

