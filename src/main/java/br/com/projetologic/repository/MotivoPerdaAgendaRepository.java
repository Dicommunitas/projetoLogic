package br.com.projetologic.repository;
import br.com.projetologic.model.MotivoPerdaAgenda;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = MotivoPerdaAgendaRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = MotivoPerdaAgenda.class)
public interface MotivoPerdaAgendaRepository extends DetachableJpaRepository<MotivoPerdaAgenda, Long>, MotivoPerdaAgendaRepositoryCustom {
}
