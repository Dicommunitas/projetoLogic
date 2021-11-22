<#import "showDetails.ftl" as details>
<!DOCTYPE html>
<html lang="en" data-layout-decorate="~{layouts/default-list-layout}">
  <#if userManagedComponents?has_content && userManagedComponents["head"]??>
  ${userManagedComponents["head"]}
  <#else>
  <head id="head">

    <title data-th-text="|${r"#{"}label_show_entity(${r"#{"}${entityLabel}${r"}"})${r"}"}|">Show ${entityName} - Spring Roo application</title>

  </head>
  </#if>

  <#if userManagedComponents?has_content && userManagedComponents["body"]??>
    ${userManagedComponents["body"]}
  <#else>
  <body id="body">

    <header role="banner">
      <!-- Content replaced by layout of the page displayed -->
    </header>

    <!--CONTAINER-->
    <div class="container bg-container">
      <!-- CONTENT -->
      <!--
        Only the inner content of the following tag "section" is included
        within the template, in the section "content"
      -->
      <section data-layout-fragment="content" data-th-object="${modelAttribute}">
        <div class="container-fluid content">

          <!-- CONTENT -->
          <h1 data-th-text="${r"#{"}label_show_entity(${r"#{"}${entityLabel}})}">Show ${entityName}</h1>

            <div id="mainEntityFieldSet">
              <h2 data-th-text="${r"#{"}label_data_entity(${r"#{"}${entityLabel}})}">${entityName} data</h2>
              <ul class="list-unstyled" id="containerFields">
       <#if (entityName != "Viagem")>
                <div class="block-item">
                  <div class="row">
                   <div class=" col-md-6"><h2> </h2></div>
                    <div class=" col-md-12">
       </#if>    
              <#list fields as field>
       <#if ((field.fieldName == "embarcador") && (entityName == "Viagem"))>
              <!-- Expedição -->
                <div class="block-item" sec:authorize="hasRole('/viagens_expedição')">
                  <div class="row">
                   <div class=" col-md-6"> <h2 data-th-title="${r"#{"}label_viagem_expedição}" >Expedição</h2> </div>
                    <div class=" col-md-12">
       </#if>     
       <#if ((field.fieldName == "inicioReal") && (entityName == "Viagem"))>
                  </div>
                </div>
              </div>
              <!-- Call center -->
                <div class="block-item" sec:authorize="hasRole('/viagens_call_center')">
                  <div class="row">
                   <div class=" col-md-6"> <h2 data-th-title="${r"#{"}label_viagem_call_center}" >Call center</h2> </div>
                    <div class=" col-md-12">
       </#if>     
       <#if ((field.fieldName == "chegadaLogisticaReversa") && (entityName == "Viagem"))>
                  </div>
                </div>
              </div>
              <!-- Logística reversa -->
                <div class="block-item" sec:authorize="hasRole('/viagens_logística_reversa')">
                  <div class="row">
                   <div class=" col-md-6"> <h2 data-th-title="${r"#{"}label_viagem_logística_reversa}" >Logística reversa</h2> </div>
                    <div class=" col-md-12">
        			<#include "unicos/viagem_show_reversa.html"  parse=false encoding="Shift_JIS">
       </#if>     
       
		    <#if ((field.fieldName == "senha") && (entityName == "Usuario")) ||
		    	 ((field.fieldName == "confirmaSenha") && (entityName == "Usuario"))>  
            <#else>    
	       	    <div class="col-md-6">
	                <#if field.userManaged>
	                  ${field.codeManaged}
	                <#else>
		                <#if field.type=="BOOLEAN">
		                  <li id="${field.fieldId}" data-z="${field.z}">
		            	      <strong data-th-text="${r"#{"}${field.label}}">${field.fieldName}</strong>
		                    <span th:if="${r"*{"}${field.fieldName}}" data-th-text="${r"#{"}true}">${field.fieldName}Value</span>
		                    <span th:unless="${r"*{"}${field.fieldName}}" data-th-text="${r"#{"}false}">${field.fieldName}Value</span>
		         	        </li>
		                <#else>
		                  <li id="${field.fieldId}" data-z="${field.z}">
		            	      <strong data-th-text="${r"#{"}${field.label}}">${field.fieldName}</strong>
		                    <span data-th-text="*{{${field.fieldName}}}">${field.fieldName}Value</span>
		         	        </li>
		                </#if>
	                </#if>
			        <#if ((field.fieldName == "chegadaCliente") && (entityName == "Viagem"))>
			            <li id="viagem-perdeuagenda-field" data-z="${field.z}">
	            	      <strong data-th-text="${r"#{label_viagem_perdeuagenda}"}">perdeuAgenda</strong>
	                      <span data-th-text="*{{perdeuAgenda}}">perdeuAgendaValue</span>
	         	        </li>
					</#if>  
			        <#if ((field.fieldName == "motivoNegativaDescarga") && (entityName == "Viagem"))>
			            <li id="viagem-numerodiarias-field" data-z="${field.z}">
	            	      <strong data-th-text="${r"#{label_viagem_numerodiarias}"}">numeroDiarias</strong>
	                      <span data-th-text="*{{numeroDiarias}}">numeroDiariasValue</span>
	         	        </li>
					</#if>  
	            </div> 	
            </#if>         
        <#if ((field.fieldName == "usuarioLogisticaReversa") && (entityName == "Viagem"))>
                  </div>
                </div>
              </div>
                <div class="block-item">
                  <div class="row">
                    <div class=" col-md-12">
		</#if>   
              </#list>
                  </div>
                </div>
              </div>
              </ul>
            </div>
            <#if compositeRelationFields?has_content>
              <#list compositeRelationFields?keys as referencedField>
                <div id="${referencedField}FieldSet">
                  <#list compositeRelationFields[referencedField] as field>
                  <#if field?index == 0>
                  <h2 data-th-text="${r"#{"}label_data_entity(${r"#{"}${field.legendLabel}})}">${field.entityName} data</h2>
                  <ul class="list-unstyled" id="containerFields">
                  </#if>
                    <#if field.userManaged>
                      ${field.codeManaged}
                    <#else>
                      <li id="${field.fieldId}" data-z="${field.z}">
                        <strong data-th-text="${r"#{"}${field.label}}">${field.fieldName}</strong>
                        <span data-th-text="*{{${field.fieldName}}}">${field.fieldName}Value</span>
                      </li>
                    </#if>
                 </#list>
                 </ul>
                </div>
              </#list>
            </#if>
          <div class="clearfix">
            <div class="pull-right">
             <a id="${entityName}_edit" href="edit.html" class="btn btn-primary"
                 data-th-title="${r"#{"}label_goEdit}"
                 data-th-href="${"${"}@linkBuilder.of('${mvcItemControllerName}').to('editForm').with('${modelAttributeName}', ${modelAttributeName}.${identifierField})}"
                 data-th-text="${r"#{"}label_edit}">Edit</a>
            </div>
                  <div class="pull-left">
					              <a onclick='history.go(-1)' class="btn btn-default" data-th-title="${r"#{"}label_goBack}">
					                 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					                 <span data-th-text="${r"#{"}label_back}">Back</span>
					              </a>
							</div>
					<!--
            <div class="pull-left">
              <a id="${entityName}_list" href="list.html" class="btn btn-default"
                 data-th-title="${r"#{"}label_goBack}"
  	             data-th-href="${"${"}@linkBuilder.of('${mvcCollectionControllerName}').to('list')}">
  	             <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  	             <span data-th-text="${r"#{"}label_back}">Back</span>
  	          </a>
            </div>
                  -->
          </div>

	          <#if detailsLevels?size != 0>
		          <!-- details -->
			       <#if entityName == "Viagem">
                	<div sec:authorize="hasRole('/viagens_logística_reversa')">
			       <#else>
			        <div>
			       </#if> 
	            <#list detailsLevels as detailsLevel>
	            	<@details.section detailsLevel=detailsLevel/>
	            </#list>
	          </#if>
	        </div>
	        
	        
       <#if (entityName == "Embarcador")>
        			<#include "unicos/embarcador_show_charts.html"  parse=false encoding="Shift_JIS">
       </#if>   
       
       
        </div>

      </section>
      <!-- /CONTENT -->
  </div>
  <!-- /CONTAINER -->

  <footer class="container">
    <!-- Content replaced by layout of the page displayed -->
  </footer>

  <!-- JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so that the pages load faster -->
  <!-- JavaScript loaded by layout of the page displayed -->
  <!--
       Only the inner content of the following tag "javascript" is included
       within the template, in the div "javascript"
      -->
  <div data-layout-fragment="javascript">
  </div>

  </body>
  </#if>

</html>
