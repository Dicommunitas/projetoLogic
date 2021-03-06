// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.ModeloVeiculo;
import br.com.projetologic.model.Veiculo;
import java.util.Calendar;
import java.util.Objects;
import java.util.Set;

privileged aspect ModeloVeiculo_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long ModeloVeiculo.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer ModeloVeiculo.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets descricao value
     * 
     * @return String
     */
    public String ModeloVeiculo.getDescricao() {
        return this.descricao;
    }
    
    /**
     * Sets descricao value
     * 
     * @param descricao
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }
    
    /**
     * Gets veiculo value
     * 
     * @return Set
     */
    public Set<Veiculo> ModeloVeiculo.getVeiculo() {
        return this.veiculo;
    }
    
    /**
     * Sets veiculo value
     * 
     * @param veiculo
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setVeiculo(Set<Veiculo> veiculo) {
        this.veiculo = veiculo;
        return this;
    }
    
    /**
     * Gets createdDate value
     * 
     * @return Calendar
     */
    public Calendar ModeloVeiculo.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * Sets createdDate value
     * 
     * @param createdDate
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
        return this;
    }
    
    /**
     * Gets createdBy value
     * 
     * @return String
     */
    public String ModeloVeiculo.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * Sets createdBy value
     * 
     * @param createdBy
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
        return this;
    }
    
    /**
     * Gets modifiedDate value
     * 
     * @return Calendar
     */
    public Calendar ModeloVeiculo.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * Sets modifiedDate value
     * 
     * @param modifiedDate
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
        return this;
    }
    
    /**
     * Gets modifiedBy value
     * 
     * @return String
     */
    public String ModeloVeiculo.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * Sets modifiedBy value
     * 
     * @param modifiedBy
     * @return ModeloVeiculo
     */
    public ModeloVeiculo ModeloVeiculo.setModifiedBy(String modifiedBy) {
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
    public boolean ModeloVeiculo.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof ModeloVeiculo)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((ModeloVeiculo) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int ModeloVeiculo.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ModeloVeiculo.toString() {
        return "ModeloVeiculo {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", descricao='" + descricao + '\'' + 
                ", createdDate='" + createdDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(createdDate.getTime()) + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(modifiedDate.getTime()) + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + "}" + super.toString();
    }
    
}
