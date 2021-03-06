// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.repository;

import br.com.projetologic.model.MotivoNegativaDiaria;
import br.com.projetologic.model.QMotivoNegativaDiaria;
import br.com.projetologic.repository.MotivoNegativaDiariaRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MotivoNegativaDiariaRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: MotivoNegativaDiariaRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDiariaRepositoryImpl.DESCRICAO = "descricao";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDiariaRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDiariaRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDiariaRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoNegativaDiariaRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MotivoNegativaDiaria> MotivoNegativaDiariaRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QMotivoNegativaDiaria motivoNegativaDiaria = QMotivoNegativaDiaria.motivoNegativaDiaria;
        
        JPQLQuery<MotivoNegativaDiaria> query = from(motivoNegativaDiaria);
        
        Path<?>[] paths = new Path<?>[] {motivoNegativaDiaria.descricao,motivoNegativaDiaria.createdDate,motivoNegativaDiaria.createdBy,motivoNegativaDiaria.modifiedDate,motivoNegativaDiaria.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRICAO, motivoNegativaDiaria.descricao)
			.map(CREATED_DATE, motivoNegativaDiaria.createdDate)
			.map(CREATED_BY, motivoNegativaDiaria.createdBy)
			.map(MODIFIED_DATE, motivoNegativaDiaria.modifiedDate)
			.map(MODIFIED_BY, motivoNegativaDiaria.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, motivoNegativaDiaria);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MotivoNegativaDiaria> MotivoNegativaDiariaRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QMotivoNegativaDiaria motivoNegativaDiaria = QMotivoNegativaDiaria.motivoNegativaDiaria;
        
        JPQLQuery<MotivoNegativaDiaria> query = from(motivoNegativaDiaria);
        
        Path<?>[] paths = new Path<?>[] {motivoNegativaDiaria.descricao,motivoNegativaDiaria.createdDate,motivoNegativaDiaria.createdBy,motivoNegativaDiaria.modifiedDate,motivoNegativaDiaria.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(motivoNegativaDiaria.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRICAO, motivoNegativaDiaria.descricao)
			.map(CREATED_DATE, motivoNegativaDiaria.createdDate)
			.map(CREATED_BY, motivoNegativaDiaria.createdBy)
			.map(MODIFIED_DATE, motivoNegativaDiaria.modifiedDate)
			.map(MODIFIED_BY, motivoNegativaDiaria.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, motivoNegativaDiaria);
    }
    
}
