// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.config.jackson;

import br.com.projetologic.config.jackson.DomainModelModule;
import br.com.projetologic.controller.json.CidadeJsonMixin;
import br.com.projetologic.controller.json.ClienteJsonMixin;
import br.com.projetologic.controller.json.ContratoJsonMixin;
import br.com.projetologic.controller.json.EmbarcadorJsonMixin;
import br.com.projetologic.controller.json.ModeloConjuntoJsonMixin;
import br.com.projetologic.controller.json.ModeloVeiculoJsonMixin;
import br.com.projetologic.controller.json.MotivoNegativaDescargaJsonMixin;
import br.com.projetologic.controller.json.MotivoNegativaDiariaJsonMixin;
import br.com.projetologic.controller.json.MotivoPerdaAgendaJsonMixin;
import br.com.projetologic.controller.json.MotoristaJsonMixin;
import br.com.projetologic.controller.json.ProdutoDevolvidoJsonMixin;
import br.com.projetologic.controller.json.RegraJsonMixin;
import br.com.projetologic.controller.json.UsuarioJsonMixin;
import br.com.projetologic.controller.json.VeiculoJsonMixin;
import br.com.projetologic.controller.json.ViagemJsonMixin;
import br.com.projetologic.model.Cidade;
import br.com.projetologic.model.Cliente;
import br.com.projetologic.model.Contrato;
import br.com.projetologic.model.Embarcador;
import br.com.projetologic.model.ModeloConjunto;
import br.com.projetologic.model.ModeloVeiculo;
import br.com.projetologic.model.MotivoNegativaDescarga;
import br.com.projetologic.model.MotivoNegativaDiaria;
import br.com.projetologic.model.MotivoPerdaAgenda;
import br.com.projetologic.model.Motorista;
import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.model.Regra;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.model.Veiculo;
import br.com.projetologic.model.Viagem;
import com.fasterxml.jackson.databind.module.SimpleModule;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Cidade.class, CidadeJsonMixin.class);
        setMixInAnnotation(Cliente.class, ClienteJsonMixin.class);
        setMixInAnnotation(Contrato.class, ContratoJsonMixin.class);
        setMixInAnnotation(Embarcador.class, EmbarcadorJsonMixin.class);
        setMixInAnnotation(ModeloConjunto.class, ModeloConjuntoJsonMixin.class);
        setMixInAnnotation(ModeloVeiculo.class, ModeloVeiculoJsonMixin.class);
        setMixInAnnotation(MotivoNegativaDescarga.class, MotivoNegativaDescargaJsonMixin.class);
        setMixInAnnotation(MotivoNegativaDiaria.class, MotivoNegativaDiariaJsonMixin.class);
        setMixInAnnotation(MotivoPerdaAgenda.class, MotivoPerdaAgendaJsonMixin.class);
        setMixInAnnotation(Motorista.class, MotoristaJsonMixin.class);
        setMixInAnnotation(ProdutoDevolvido.class, ProdutoDevolvidoJsonMixin.class);
        setMixInAnnotation(Regra.class, RegraJsonMixin.class);
        setMixInAnnotation(Usuario.class, UsuarioJsonMixin.class);
        setMixInAnnotation(Veiculo.class, VeiculoJsonMixin.class);
        setMixInAnnotation(Viagem.class, ViagemJsonMixin.class);
    }

}
