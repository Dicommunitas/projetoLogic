// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.MotoristaJsonMixin;
import br.com.projetologic.model.Viagem;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;

privileged aspect MotoristaJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> MotoristaJsonMixin.viagem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> MotoristaJsonMixin.getViagem() {
        return viagem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagem
     */
    public void MotoristaJsonMixin.setViagem(Set<Viagem> viagem) {
        this.viagem = viagem;
    }
    
}
