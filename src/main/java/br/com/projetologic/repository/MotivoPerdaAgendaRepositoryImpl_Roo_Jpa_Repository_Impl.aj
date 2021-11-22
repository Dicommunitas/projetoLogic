// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.repository;

import br.com.projetologic.model.MotivoPerdaAgenda;
import br.com.projetologic.model.QMotivoPerdaAgenda;
import br.com.projetologic.repository.MotivoPerdaAgendaRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MotivoPerdaAgendaRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: MotivoPerdaAgendaRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoPerdaAgendaRepositoryImpl.DESCRICAO = "descricao";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoPerdaAgendaRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoPerdaAgendaRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoPerdaAgendaRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String MotivoPerdaAgendaRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MotivoPerdaAgenda> MotivoPerdaAgendaRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QMotivoPerdaAgenda motivoPerdaAgenda = QMotivoPerdaAgenda.motivoPerdaAgenda;
        
        JPQLQuery<MotivoPerdaAgenda> query = from(motivoPerdaAgenda);
        
        Path<?>[] paths = new Path<?>[] {motivoPerdaAgenda.descricao,motivoPerdaAgenda.createdDate,motivoPerdaAgenda.createdBy,motivoPerdaAgenda.modifiedDate,motivoPerdaAgenda.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRICAO, motivoPerdaAgenda.descricao)
			.map(CREATED_DATE, motivoPerdaAgenda.createdDate)
			.map(CREATED_BY, motivoPerdaAgenda.createdBy)
			.map(MODIFIED_DATE, motivoPerdaAgenda.modifiedDate)
			.map(MODIFIED_BY, motivoPerdaAgenda.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, motivoPerdaAgenda);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MotivoPerdaAgenda> MotivoPerdaAgendaRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QMotivoPerdaAgenda motivoPerdaAgenda = QMotivoPerdaAgenda.motivoPerdaAgenda;
        
        JPQLQuery<MotivoPerdaAgenda> query = from(motivoPerdaAgenda);
        
        Path<?>[] paths = new Path<?>[] {motivoPerdaAgenda.descricao,motivoPerdaAgenda.createdDate,motivoPerdaAgenda.createdBy,motivoPerdaAgenda.modifiedDate,motivoPerdaAgenda.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(motivoPerdaAgenda.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRICAO, motivoPerdaAgenda.descricao)
			.map(CREATED_DATE, motivoPerdaAgenda.createdDate)
			.map(CREATED_BY, motivoPerdaAgenda.createdBy)
			.map(MODIFIED_DATE, motivoPerdaAgenda.modifiedDate)
			.map(MODIFIED_BY, motivoPerdaAgenda.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, motivoPerdaAgenda);
    }
    
}
