// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.repository;

import br.com.projetologic.model.Cidade;
import br.com.projetologic.model.QCidade;
import br.com.projetologic.repository.CidadeRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CidadeRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: CidadeRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CidadeRepositoryImpl.NOME = "nome";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CidadeRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CidadeRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CidadeRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CidadeRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cidade> CidadeRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCidade cidade = QCidade.cidade;
        
        JPQLQuery<Cidade> query = from(cidade);
        
        Path<?>[] paths = new Path<?>[] {cidade.nome,cidade.createdDate,cidade.createdBy,cidade.modifiedDate,cidade.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NOME, cidade.nome)
			.map(CREATED_DATE, cidade.createdDate)
			.map(CREATED_BY, cidade.createdBy)
			.map(MODIFIED_DATE, cidade.modifiedDate)
			.map(MODIFIED_BY, cidade.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, cidade);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cidade> CidadeRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QCidade cidade = QCidade.cidade;
        
        JPQLQuery<Cidade> query = from(cidade);
        
        Path<?>[] paths = new Path<?>[] {cidade.nome,cidade.createdDate,cidade.createdBy,cidade.modifiedDate,cidade.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(cidade.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NOME, cidade.nome)
			.map(CREATED_DATE, cidade.createdDate)
			.map(CREATED_BY, cidade.createdBy)
			.map(MODIFIED_DATE, cidade.modifiedDate)
			.map(MODIFIED_BY, cidade.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, cidade);
    }
    
}
