// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.ModeloConjuntoDeserializer;
import br.com.projetologic.controller.json.ModeloVeiculoDeserializer;
import br.com.projetologic.controller.json.VeiculoJsonMixin;
import br.com.projetologic.model.ModeloConjunto;
import br.com.projetologic.model.ModeloVeiculo;
import br.com.projetologic.model.Viagem;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;

privileged aspect VeiculoJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCarreta1;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCarreta2;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCarretaReversa1;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCarretaReversa2;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCavalo;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Viagem> VeiculoJsonMixin.ViagensCavaloReversa;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ModeloConjuntoDeserializer.class)
    private ModeloConjunto VeiculoJsonMixin.modeloConjunto;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ModeloVeiculoDeserializer.class)
    private ModeloVeiculo VeiculoJsonMixin.modeloVeiculo;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCarreta1() {
        return ViagensCarreta1;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCarreta1
     */
    public void VeiculoJsonMixin.setViagensCarreta1(Set<Viagem> ViagensCarreta1) {
        this.ViagensCarreta1 = ViagensCarreta1;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCarreta2() {
        return ViagensCarreta2;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCarreta2
     */
    public void VeiculoJsonMixin.setViagensCarreta2(Set<Viagem> ViagensCarreta2) {
        this.ViagensCarreta2 = ViagensCarreta2;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCarretaReversa1() {
        return ViagensCarretaReversa1;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCarretaReversa1
     */
    public void VeiculoJsonMixin.setViagensCarretaReversa1(Set<Viagem> ViagensCarretaReversa1) {
        this.ViagensCarretaReversa1 = ViagensCarretaReversa1;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCarretaReversa2() {
        return ViagensCarretaReversa2;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCarretaReversa2
     */
    public void VeiculoJsonMixin.setViagensCarretaReversa2(Set<Viagem> ViagensCarretaReversa2) {
        this.ViagensCarretaReversa2 = ViagensCarretaReversa2;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCavalo() {
        return ViagensCavalo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCavalo
     */
    public void VeiculoJsonMixin.setViagensCavalo(Set<Viagem> ViagensCavalo) {
        this.ViagensCavalo = ViagensCavalo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Viagem> VeiculoJsonMixin.getViagensCavaloReversa() {
        return ViagensCavaloReversa;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ViagensCavaloReversa
     */
    public void VeiculoJsonMixin.setViagensCavaloReversa(Set<Viagem> ViagensCavaloReversa) {
        this.ViagensCavaloReversa = ViagensCavaloReversa;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ModeloConjunto
     */
    public ModeloConjunto VeiculoJsonMixin.getModeloConjunto() {
        return modeloConjunto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloConjunto
     */
    public void VeiculoJsonMixin.setModeloConjunto(ModeloConjunto modeloConjunto) {
        this.modeloConjunto = modeloConjunto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ModeloVeiculo
     */
    public ModeloVeiculo VeiculoJsonMixin.getModeloVeiculo() {
        return modeloVeiculo;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param modeloVeiculo
     */
    public void VeiculoJsonMixin.setModeloVeiculo(ModeloVeiculo modeloVeiculo) {
        this.modeloVeiculo = modeloVeiculo;
    }
    
}
