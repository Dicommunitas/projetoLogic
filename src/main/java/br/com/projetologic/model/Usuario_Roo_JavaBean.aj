// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.model;

import br.com.projetologic.model.Regra;
import br.com.projetologic.model.Usuario;
import br.com.projetologic.model.Viagem;
import java.util.Calendar;
import java.util.Objects;
import java.util.Set;

privileged aspect Usuario_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Usuario.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Usuario
     */
    public Usuario Usuario.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Usuario.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Usuario
     */
    public Usuario Usuario.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets nome value
     * 
     * @return String
     */
    public String Usuario.getNome() {
        return this.nome;
    }
    
    /**
     * Sets nome value
     * 
     * @param nome
     * @return Usuario
     */
    public Usuario Usuario.setNome(String nome) {
        this.nome = nome;
        return this;
    }
    
    /**
     * Gets login value
     * 
     * @return String
     */
    public String Usuario.getLogin() {
        return this.login;
    }
    
    /**
     * Sets login value
     * 
     * @param login
     * @return Usuario
     */
    public Usuario Usuario.setLogin(String login) {
        this.login = login;
        return this;
    }
    
    /**
     * Sets senha1 value
     * 
     * @param senha1
     * @return Usuario
     */
    public Usuario Usuario.setSenha1(String senha1) {
        this.senha1 = senha1;
        return this;
    }
    
    /**
     * Sets senha2 value
     * 
     * @param senha2
     * @return Usuario
     */
    public Usuario Usuario.setSenha2(String senha2) {
        this.senha2 = senha2;
        return this;
    }
    
    /**
     * Gets cpf value
     * 
     * @return String
     */
    public String Usuario.getCpf() {
        return this.cpf;
    }
    
    /**
     * Sets cpf value
     * 
     * @param cpf
     * @return Usuario
     */
    public Usuario Usuario.setCpf(String cpf) {
        this.cpf = cpf;
        return this;
    }
    
    /**
     * Gets viagensExpedicao value
     * 
     * @return Set
     */
    public Set<Viagem> Usuario.getViagensExpedicao() {
        return this.viagensExpedicao;
    }
    
    /**
     * Sets viagensExpedicao value
     * 
     * @param viagensExpedicao
     * @return Usuario
     */
    public Usuario Usuario.setViagensExpedicao(Set<Viagem> viagensExpedicao) {
        this.viagensExpedicao = viagensExpedicao;
        return this;
    }
    
    /**
     * Gets viagensCallCenter value
     * 
     * @return Set
     */
    public Set<Viagem> Usuario.getViagensCallCenter() {
        return this.viagensCallCenter;
    }
    
    /**
     * Sets viagensCallCenter value
     * 
     * @param viagensCallCenter
     * @return Usuario
     */
    public Usuario Usuario.setViagensCallCenter(Set<Viagem> viagensCallCenter) {
        this.viagensCallCenter = viagensCallCenter;
        return this;
    }
    
    /**
     * Gets viagensLogisticaReversa value
     * 
     * @return Set
     */
    public Set<Viagem> Usuario.getViagensLogisticaReversa() {
        return this.viagensLogisticaReversa;
    }
    
    /**
     * Sets viagensLogisticaReversa value
     * 
     * @param viagensLogisticaReversa
     * @return Usuario
     */
    public Usuario Usuario.setViagensLogisticaReversa(Set<Viagem> viagensLogisticaReversa) {
        this.viagensLogisticaReversa = viagensLogisticaReversa;
        return this;
    }
    
    /**
     * Gets acessos value
     * 
     * @return Set
     */
    public Set<Regra> Usuario.getAcessos() {
        return this.acessos;
    }
    
    /**
     * Sets acessos value
     * 
     * @param acessos
     * @return Usuario
     */
    public Usuario Usuario.setAcessos(Set<Regra> acessos) {
        this.acessos = acessos;
        return this;
    }
    
    /**
     * Gets modifiedBy value
     * 
     * @return String
     */
    public String Usuario.getModifiedBy() {
        return this.modifiedBy;
    }
    
    /**
     * Sets modifiedBy value
     * 
     * @param modifiedBy
     * @return Usuario
     */
    public Usuario Usuario.setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
        return this;
    }
    
    /**
     * Gets createdDate value
     * 
     * @return Calendar
     */
    public Calendar Usuario.getCreatedDate() {
        return this.createdDate;
    }
    
    /**
     * Sets createdDate value
     * 
     * @param createdDate
     * @return Usuario
     */
    public Usuario Usuario.setCreatedDate(Calendar createdDate) {
        this.createdDate = createdDate;
        return this;
    }
    
    /**
     * Gets createdBy value
     * 
     * @return String
     */
    public String Usuario.getCreatedBy() {
        return this.createdBy;
    }
    
    /**
     * Sets createdBy value
     * 
     * @param createdBy
     * @return Usuario
     */
    public Usuario Usuario.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
        return this;
    }
    
    /**
     * Gets modifiedDate value
     * 
     * @return Calendar
     */
    public Calendar Usuario.getModifiedDate() {
        return this.modifiedDate;
    }
    
    /**
     * Sets modifiedDate value
     * 
     * @param modifiedDate
     * @return Usuario
     */
    public Usuario Usuario.setModifiedDate(Calendar modifiedDate) {
        this.modifiedDate = modifiedDate;
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
    public boolean Usuario.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Usuario)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Usuario) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Usuario.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Usuario.toString() {
        return "Usuario {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", nome='" + nome + '\'' + 
                ", login='" + login + '\'' + 
                ", senha='" + senha + '\'' + 
                ", senha1='" + senha1 + '\'' + 
                ", confirmaSenha='" + confirmaSenha + '\'' + 
                ", senha2='" + senha2 + '\'' + 
                ", cpf='" + cpf + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + 
                ", createdDate='" + createdDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(createdDate.getTime()) + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate == null ? null : java.text.DateFormat.getDateTimeInstance().format(modifiedDate.getTime()) + '\'' + "}" + super.toString();
    }
    
}