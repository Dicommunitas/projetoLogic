package br.com.projetologic.service.impl;

import br.com.projetologic.model.Contrato;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.model.Viagem;
import br.com.projetologic.model.reference.StatusViagem;
import br.com.projetologic.service.api.ContratoService;
import io.springlets.data.web.validation.MessageI18n;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

import com.google.common.collect.Iterators;

/**
 * = ContratoServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = ContratoService.class)
public class ContratoServiceImpl implements ContratoService {

	/**
	 * TODO Auto-generated method documentation
	 * 
	 * @param contrato
	 * @return Map
	 */
	public Map<String, List<MessageI18n>> validate(Contrato contrato) {
		Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();

		// TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY

		valida_vigenciaFim(contrato, messages);
		valida_vigenciaInicialContratoExistente(contrato, messages);
		valida_vigenciaFinalContratoExistente(contrato, messages);
		valida_vigenciaEntreContratoExistente(contrato, messages);
		valida_vigenciaFinalInicialDiferente(contrato, messages);

		return messages;
	}

	private void valida_vigenciaFinalInicialDiferente(Contrato contrato, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();
		if (contrato.getVigenciaInicio() != null && contrato.getVigenciaFim() != null) {
			if (contrato.getVigenciaInicio().equals(contrato.getVigenciaFim())) {
				listaDeErros.add(new MessageI18n("error_contrato_vigencias_iguais", null));
				messages.put("vigenciaInicio", listaDeErros);
				messages.put("vigenciaFim", listaDeErros);

			}
		}
	}

	private void valida_vigenciaEntreContratoExistente(Contrato contrato, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (contrato.getVigenciaInicio() != null && contrato.getVigenciaFim() != null) {
			Iterator<Contrato> iteratorContratos = this
					.findByContratanteAndVigenciaFimAfterAndVigenciaInicioBefore(contrato.getContratante(),
							contrato.getVigenciaInicio(), contrato.getVigenciaFim(), null)
					.iterator();
			listaDeErros.add(new MessageI18n("error_contrato_vigenciaFim_vigenciaInicio_existente", null));
			while (iteratorContratos.hasNext()) {
				if (contrato.getId() == null) {
					messages.put("vigenciaInicio", listaDeErros);
					messages.put("vigenciaFim", listaDeErros);
				} else {
					if (iteratorContratos.next().getId() != contrato.getId()) {
						messages.put("vigenciaInicio", listaDeErros);
						messages.put("vigenciaFim", listaDeErros);
					}
				}
				break;
			}

		}
	}

	private void valida_vigenciaFinalContratoExistente(Contrato contrato, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (contrato.getVigenciaInicio() != null && contrato.getVigenciaFim() != null) {
			Contrato con = contrato.getContratante().getContratoVigente(contrato.getVigenciaFim());
			if (con != null) {
				if (con.getId() != contrato.getId()) {
					listaDeErros.add(new MessageI18n("error_contrato_vigencia_entre_vigencia_existente", null));
					messages.put("vigenciaFim", listaDeErros);
				}
			}
		}
	}

	private void valida_vigenciaInicialContratoExistente(Contrato contrato, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (contrato.getVigenciaInicio() != null && contrato.getVigenciaFim() != null) {
			Contrato con = contrato.getContratante().getContratoVigente(contrato.getVigenciaInicio());
			if (con != null) {
				if (con.getId() != contrato.getId()) {
					listaDeErros.add(new MessageI18n("error_contrato_vigencia_entre_vigencia_existente", null));
					messages.put("vigenciaInicio", listaDeErros);
				}
			}
		}
	}

	private void valida_vigenciaFim(Contrato contrato, Map<String, List<MessageI18n>> messages) {
		List<MessageI18n> listaDeErros = new ArrayList<MessageI18n>();

		if (contrato.getVigenciaInicio() != null) {
			if (contrato.getVigenciaInicio().after(contrato.getVigenciaFim())) {
				listaDeErros.add(new MessageI18n("error_contrato_vigenciaFim_menor_vigenciaInicio", null));
				messages.put("vigenciaFim", listaDeErros);
			}
		}
	}
}
