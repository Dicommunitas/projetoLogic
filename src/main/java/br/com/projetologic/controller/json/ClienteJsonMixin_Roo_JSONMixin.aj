// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.CidadeDeserializer;
import br.com.projetologic.controller.json.ClienteJsonMixin;
import br.com.projetologic.model.Cidade;
import br.com.projetologic.model.Viagem;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;

privileged aspect ClienteJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> ClienteJsonMixin.viagens;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CidadeDeserializer.class)
    private Cidade ClienteJsonMixin.cidade;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> ClienteJsonMixin.getViagens() {
        return viagens;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagens
     */
    public void ClienteJsonMixin.setViagens(Set<Viagem> viagens) {
        this.viagens = viagens;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Cidade
     */
    public Cidade ClienteJsonMixin.getCidade() {
        return cidade;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidade
     */
    public void ClienteJsonMixin.setCidade(Cidade cidade) {
        this.cidade = cidade;
    }
    
}
