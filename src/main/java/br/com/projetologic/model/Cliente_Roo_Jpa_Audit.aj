// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.Cliente;
import javax.persistence.EntityListeners;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

privileged aspect Cliente_Roo_Jpa_Audit {
    
    declare @type: Cliente: @EntityListeners(AuditingEntityListener.class);
    
}
