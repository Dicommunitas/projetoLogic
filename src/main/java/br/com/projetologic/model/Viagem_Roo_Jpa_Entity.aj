// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.ProdutoDevolvido;
import br.com.projetologic.model.Viagem;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Viagem_Roo_Jpa_Entity {
    
    declare @type: Viagem: @Entity;
    
    declare @type: Viagem: @EntityFormat("#{cidadeOrigem} --> #{destino}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Viagem.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Viagem.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtosDevolvidosToAdd
     */
    public void Viagem.addToProdutosDevolvidos(Iterable<ProdutoDevolvido> produtosDevolvidosToAdd) {
        Assert.notNull(produtosDevolvidosToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (ProdutoDevolvido item : produtosDevolvidosToAdd) {
            this.produtosDevolvidos.add(item);
            item.setViagem(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param produtosDevolvidosToRemove
     */
    public void Viagem.removeFromProdutosDevolvidos(Iterable<ProdutoDevolvido> produtosDevolvidosToRemove) {
        Assert.notNull(produtosDevolvidosToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (ProdutoDevolvido item : produtosDevolvidosToRemove) {
            this.produtosDevolvidos.remove(item);
            item.setViagem(null);
        }
    }
    
}
