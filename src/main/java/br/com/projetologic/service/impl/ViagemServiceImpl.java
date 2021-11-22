package br.com.projetologic.service.impl;

import br.com.projetologic.service.api.ViagemService;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.Status;
import br.com.projetologic.model.reference.StatusDevolucao;
import br.com.projetologic.model.reference.TipoVeiculo;
import br.com.projetologic.model.reference.VerdadeiroFalso;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * = ViagemServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = ViagemService.class)
public class ViagemServiceImpl implements ViagemService {

	/**
	 * TODO Auto-generated method documentation
	 *
	 * @param viagem
	 * @return Map
	 */
	@Override
	public Map<String, List<MessageI18n>> validate(Viagem viagem) {
		Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
		// TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY

		valida_horaParadaPostoFiscal(viagem, messages);
		valida_horaSaidaPostoFiscal(viagem, messages);
		valida_cavalo(viagem, messages);
		valida_carreta1(viagem, messages);
		valida_carreta2(viagem, messages);
		valida_motivoPerdaAgenda(viagem, messages);
		valida_chegadaCliente(viagem, messages);
		valida_inicioDescarga(viagem, messages);
		valida_fimDescarga(viagem, messages);
		valida_fimViagem(viagem, messages);
		valida_motivoNegativaDescarga(viagem, messages);
		valida_motivoNegativaDiaria(viagem, messages);
		valida_devolucao(viagem, messages);
		valida_embarcador(viagem, messages);
		valida_horaParadaPostoFiscalMenorInicioReal(viagem, messages);
		valida_statusDevolucao(viagem, messages);
		valida_cavaloReversa(viagem, messages);
		valida_carreta1Reversa(viagem, messages);
		valida_carreta2Reversa(viagem, messages);
		valida_inicioReal(viagem, messages);

		return messages;
	}

	public void valida_inicioReal(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();
		if ((viagem.getHoraParadaPostoFiscal() != null) && (viagem.getInicioReal() == null)) {
			listaDeErros.add(new MessageI18n("erro_inicioReal.notNull", null));
			messages.put("inicioReal", listaDeErros);
		}
	}

	public void valida_cavaloReversa(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCarretaReversa2() != null) {
			if ((viagem.getCarretaReversa2().getTipo() != TipoVeiculo.CARRETA)) {
				listaDeErros.add(new MessageI18n("erro_tipo_carreta", null));
				messages.put("carretaReversa2", listaDeErros);
			}
		}
	}

	public void valida_carreta1Reversa(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCarretaReversa1() != null) {
			if ((viagem.getCarretaReversa1().getTipo() != TipoVeiculo.CARRETA)) {
				listaDeErros.add(new MessageI18n("erro_tipo_carreta", null));
				messages.put("carretaReversa1", listaDeErros);
			}
		}
	}

	public void valida_carreta2Reversa(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCavaloReversa() != null) {
			if ((viagem.getCavaloReversa().getTipo() != TipoVeiculo.CAVALO)) {
				listaDeErros.add(new MessageI18n("erro_tipo_cavalo", null));
				messages.put("cavaloReversa", listaDeErros);
			}
		}
	}

	public void valida_statusDevolucao(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();
		if (viagem.getId() != null) {
			if ((viagem.getDevolucao() != StatusDevolucao.COM)
					&& (this.findOne(viagem.getId()).getProdutosDevolvidos().size() != 0)) {
				listaDeErros.add(new MessageI18n("erro_status_devolucao_errado_com_produto_devolvido", null));
				messages.put("devolucao", listaDeErros);
			}
		}
	}

	public void valida_horaParadaPostoFiscalMenorInicioReal(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getHoraParadaPostoFiscal() != null) && (viagem.getInicioReal() != null)) {
			if (viagem.getHoraParadaPostoFiscal().before(viagem.getInicioReal()) || viagem.getHoraParadaPostoFiscal().equals(viagem.getInicioReal())) {
				listaDeErros.add(new MessageI18n("erro_horaParadaPostoFiscalMenorInicioReal", null));
				messages.put("horaParadaPostoFiscal", listaDeErros);
			}
		}
	}

	public void valida_embarcador(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getEmbarcador() != null && viagem.getDataLancamento() != null) {
			if (viagem.getEmbarcador().getContratoVigente(viagem.getDataLancamento()) == null) {
				listaDeErros.add(new MessageI18n("error_embarcador_sem_contrato_vigencia", null));
				messages.put("embarcador", listaDeErros);
				messages.put("dataLancamento", listaDeErros);
			}
		}
	}

	public void valida_devolucao(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getFimViagem() != null) {
			if (viagem.getDevolucao() == StatusDevolucao.NA) {
				listaDeErros.add(new MessageI18n("error_NotNull", null));
				messages.put("devolucao", listaDeErros);
			}
		}
	}

	public void valida_motivoNegativaDiaria(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getStatusDiaria() != null) {
			if ((viagem.getStatusDiaria() == Status.NEGADO) && (viagem.getMotivoNegativaDiaria() == null)) {
				listaDeErros.add(new MessageI18n("error_NotNull", null));
				messages.put("motivoNegativaDiaria", listaDeErros);
			}
		}
	}

	public void valida_motivoNegativaDescarga(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getStatusCustoDescarga() != null) {
			if ((viagem.getStatusCustoDescarga() == Status.NEGADO) && (viagem.getMotivoNegativaDescarga() == null)) {
				listaDeErros.add(new MessageI18n("error_NotNull", null));
				messages.put("motivoNegativaDescarga", listaDeErros);
			}
		}
	}

	public void valida_fimViagem(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getFimViagem() != null) && (viagem.getFimDescarga() != null)) {
			if ((viagem.getFimViagem().compareTo(viagem.getFimDescarga())) < 0) {
				listaDeErros.add(new MessageI18n("error_deve_ser_maior_fimDescarga", null));
				messages.put("fimViagem", listaDeErros);
			}
		}
	}

	public void valida_fimDescarga(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getInicioDescarga() != null) && (viagem.getFimDescarga() != null)) {
			if ((viagem.getFimDescarga().compareTo(viagem.getInicioDescarga())) < 0) {
				listaDeErros.add(new MessageI18n("error_deve_ser_maior_inicioDescarga", null));
				messages.put("fimDescarga", listaDeErros);
			}
		}
		if ((viagem.getFimViagem() != null) && (viagem.getFimDescarga() == null)) {
			listaDeErros.add(new MessageI18n("error_FimViagem_nao_pode_ser_nulo", null));
			messages.put("fimDescarga", listaDeErros);
		}
	}

	public void valida_inicioDescarga(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getInicioDescarga() != null) && (viagem.getChegadaCliente() != null)) {
			if ((viagem.getInicioDescarga().compareTo(viagem.getChegadaCliente())) < 0) {
				listaDeErros.add(new MessageI18n("error_deve_ser_maior_chegadaCliente", null));
				messages.put("inicioDescarga", listaDeErros);
			}
		}
	}

	public void valida_chegadaCliente(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getChegadaCliente() != null) && (viagem.getHoraSaidaPostoFiscal() != null)) {
			if ((viagem.getChegadaCliente().compareTo(viagem.getHoraSaidaPostoFiscal())) < 0) {
				listaDeErros.add(new MessageI18n("error_deve_ser_maior_HoraSaidaPostoFiscal", null));
				messages.put("chegadaCliente", listaDeErros);
			}
		}

		if ((viagem.getChegadaCliente() != null) && (viagem.getInicioReal() != null)) {
			if ((viagem.getChegadaCliente().compareTo(viagem.getInicioReal())) < 0) {
				listaDeErros.add(new MessageI18n("error_deve_ser_maior_inicioReal", null));
				messages.put("chegadaCliente", listaDeErros);
			}
		}
	}

	public void valida_motivoPerdaAgenda(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getPerdeuAgenda() == VerdadeiroFalso.VERDADEIRO) && (viagem.getMotivoPerdaAgenda() == null)) {
			listaDeErros.add(new MessageI18n("error_NotNull", null));
			messages.put("motivoPerdaAgenda", listaDeErros);
		} else if ((viagem.getPerdeuAgenda() != VerdadeiroFalso.VERDADEIRO)	&& (viagem.getMotivoPerdaAgenda() != null)) {
			listaDeErros.add(new MessageI18n("error_naoPerdeuAgenda.deveSerNulo", null));
			messages.put("motivoPerdaAgenda", listaDeErros);
		}
	}

	public void valida_carreta2(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCarreta2() != null) {
			if ((viagem.getCarreta2().getTipo() != TipoVeiculo.CARRETA)) {
				listaDeErros.add(new MessageI18n("erro_tipo_carreta", null));
				messages.put("carreta2", listaDeErros);
			}
		}
	}

	public void valida_carreta1(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCarreta1() != null) {
			if ((viagem.getCarreta1().getTipo() != TipoVeiculo.CARRETA)) {
				listaDeErros.add(new MessageI18n("erro_tipo_carreta", null));
				messages.put("carreta1", listaDeErros);
			}
		}
	}

	public void valida_cavalo(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (viagem.getCavalo() != null) {
			if ((viagem.getCavalo().getTipo() != TipoVeiculo.CAVALO)) {
				listaDeErros.add(new MessageI18n("erro_tipo_cavalo", null));
				messages.put("cavalo", listaDeErros);
			}
		}
	}

	public void valida_horaParadaPostoFiscal(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();
		if ((viagem.getHoraParadaPostoFiscal() == null) && (viagem.getHoraSaidaPostoFiscal() != null)) {
			listaDeErros.add(new MessageI18n("erro_horaParadaPostoFiscal.notNull", null));
			messages.put("horaParadaPostoFiscal", listaDeErros);
		}
	}

	public void valida_horaSaidaPostoFiscal(Viagem viagem, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if ((viagem.getHoraParadaPostoFiscal() != null) && (viagem.getHoraSaidaPostoFiscal() != null)) {
			if ((viagem.getHoraParadaPostoFiscal().compareTo(viagem.getHoraSaidaPostoFiscal())) > 0) {
				listaDeErros.add(new MessageI18n("erro_horaSaidaPostoFiscal.menorQue.horaParadaPostoFiscal", null));
				messages.put("horaSaidaPostoFiscal", listaDeErros);
			}
		}
		if ((viagem.getHoraParadaPostoFiscal() != null) && (viagem.getHoraSaidaPostoFiscal() == null)
				&& (viagem.getChegadaCliente() != null)) {
			listaDeErros.add(new MessageI18n("erro_horaSaidaPostoFiscal.notNull", null));
			messages.put("horaSaidaPostoFiscal", listaDeErros);
		}
	}

}
