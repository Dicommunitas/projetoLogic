// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.MotivoPerdaAgendaJsonMixin;
import br.com.projetologic.model.Viagem;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;

privileged aspect MotivoPerdaAgendaJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> MotivoPerdaAgendaJsonMixin.viagem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> MotivoPerdaAgendaJsonMixin.getViagem() {
        return viagem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     */
    public void MotivoPerdaAgendaJsonMixin.setViagem(Set<Viagem> viagem) {
        this.viagem = viagem;
    }
    
}