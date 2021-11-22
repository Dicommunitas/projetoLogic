package br.com.projetologic.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUsuario is a Querydsl query type for Usuario
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QUsuario extends EntityPathBase<Usuario> {

    private static final long serialVersionUID = -978179423L;

    public static final QUsuario usuario = new QUsuario("usuario");

    public final SetPath<Regra, QRegra> acessos = this.<Regra, QRegra>createSet("acessos", Regra.class, QRegra.class, PathInits.DIRECT2);

    public final StringPath confirmaSenha = createString("confirmaSenha");

    public final StringPath cpf = createString("cpf");

    public final StringPath createdBy = createString("createdBy");

    public final DateTimePath<java.util.Calendar> createdDate = createDateTime("createdDate", java.util.Calendar.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath login = createString("login");

    public final StringPath modifiedBy = createString("modifiedBy");

    public final DateTimePath<java.util.Calendar> modifiedDate = createDateTime("modifiedDate", java.util.Calendar.class);

    public final StringPath nome = createString("nome");

    public final StringPath senha = createString("senha");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public final SetPath<Viagem, QViagem> viagensCallCenter = this.<Viagem, QViagem>createSet("viagensCallCenter", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> viagensExpedicao = this.<Viagem, QViagem>createSet("viagensExpedicao", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public final SetPath<Viagem, QViagem> viagensLogisticaReversa = this.<Viagem, QViagem>createSet("viagensLogisticaReversa", Viagem.class, QViagem.class, PathInits.DIRECT2);

    public QUsuario(String variable) {
        super(Usuario.class, forVariable(variable));
    }

    public QUsuario(Path<? extends Usuario> path) {
        super(path.getType(), path.getMetadata());
    }

    public QUsuario(PathMetadata metadata) {
        super(Usuario.class, metadata);
    }

}

