// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.MotivoNegativaDescarga;
import br.com.projetologic.model.Viagem;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect MotivoNegativaDescarga_Roo_Jpa_Entity {
    
    declare @type: MotivoNegativaDescarga: @Entity;
    
    declare @type: MotivoNegativaDescarga: @EntityFormat("#{descricao}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDescarga.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDescarga.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemToAdd
     */
    public void MotivoNegativaDescarga.addToViagem(Iterable<Viagem> viagemToAdd) {
        Assert.notNull(viagemToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Viagem item : viagemToAdd) {
            this.viagem.add(item);
            item.setMotivoNegativaDescarga(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemToRemove
     */
    public void MotivoNegativaDescarga.removeFromViagem(Iterable<Viagem> viagemToRemove) {
        Assert.notNull(viagemToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Viagem item : viagemToRemove) {
            this.viagem.remove(item);
            item.setMotivoNegativaDescarga(null);
        }
    }
    
}
