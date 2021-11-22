// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.Motorista;
import br.com.projetologic.model.Viagem;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Motorista_Roo_Jpa_Entity {
    
    declare @type: Motorista: @Entity;
    
    declare @type: Motorista: @EntityFormat("#{nome} - #{cpf}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Motorista.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Motorista.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemToAdd
     */
    public void Motorista.addToViagem(Iterable<Viagem> viagemToAdd) {
        Assert.notNull(viagemToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Viagem item : viagemToAdd) {
            this.viagem.add(item);
            item.setMotorista(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param viagemToRemove
     */
    public void Motorista.removeFromViagem(Iterable<Viagem> viagemToRemove) {
        Assert.notNull(viagemToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Viagem item : viagemToRemove) {
            this.viagem.remove(item);
            item.setMotorista(null);
        }
    }
    
}
