// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.MotivoPerdaAgenda;
import br.com.projetologic.model.Viagem;
import java.util.Calendar;
import java.util.Objects;
import java.util.Set;

privileged aspect MotivoPerdaAgenda_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long MotivoPerdaAgenda.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer MotivoPerdaAgenda.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets descricao value
     * 
     * @return String
     */
    public String MotivoPerdaAgenda.getDescricao() {
        return this.descricao;
    }
    
    /**
     * Sets descricao value
     * 
     * @param descricao
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }
    
    /**
     * Gets viagem value
     * 
     * @return Set
     */
    public Set<Viagem> MotivoPerdaAgenda.getViagem() {
        return this.viagem;
    }
    
    /**
     * Sets viagem value
     * 
     * @param viagem
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setViagem(Set<Viagem> viagem) {
        this.viagem = viagem;
        return this;
    }
    
    /**
     * Gets createdDate value
     * 
     * @return Calendar
     */
    public Calendar MotivoPerdaAgenda.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * Sets createdDate value
     * 
     * @param createdDate
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
        return this;
    }
    
    /**
     * Gets createdBy value
     * 
     * @return String
     */
    public String MotivoPerdaAgenda.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * Sets createdBy value
     * 
     * @param createdBy
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
        return this;
    }
    
    /**
     * Gets modifiedDate value
     * 
     * @return Calendar
     */
    public Calendar MotivoPerdaAgenda.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * Sets modifiedDate value
     * 
     * @param modifiedDate
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
        return this;
    }
    
    /**
     * Gets modifiedBy value
     * 
     * @return String
     */
    public String MotivoPerdaAgenda.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * Sets modifiedBy value
     * 
     * @param modifiedBy
     * @return MotivoPerdaAgenda
     */
    public MotivoPerdaAgenda MotivoPerdaAgenda.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean MotivoPerdaAgenda.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof MotivoPerdaAgenda)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((MotivoPerdaAgenda) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int MotivoPerdaAgenda.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String MotivoPerdaAgenda.toString() {
        return "MotivoPerdaAgenda {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", descricao='" + descricao + '\'' + 
                ", createdDate='" + createdDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(createdDate.getTime()) + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(modifiedDate.getTime()) + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + "}" + super.toString();
    }
    
}
