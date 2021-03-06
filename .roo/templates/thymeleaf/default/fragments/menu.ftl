<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Page menu</title>
  </head>
<#if userManagedComponents?has_content && userManagedComponents["body"]??>
  ${userManagedComponents["body"]}
<#else>
  <body id="body">
    <!--
    Only the internal content of the following div is included within
    the template, in menu fragment    
    -->
    <nav class="navbar navbar-default navbar-static-top" data-th-fragment="menu">

         <div class="container">

            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainnav" aria-expanded="false">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

              <!-- Brand logo -->
              <div class="organization-logo navbar-brand">
                <a title="${projectName}" href="/" data-th-href="@{/}">
                  <img alt="${projectName}" data-th-src="@{/public/img/logo.png}" src="../../static/public/img/logo.png" />
                </a>
              </div>
              <!-- Name application -->
              <div class="application-name navbar-brand hidden-xs">
                <a data-th-title="${r"#{"}label_goHome}" href="/" data-th-href="@{/}">${projectName}</a>
              </div>

            </div><!-- /navbar-header -->

            <div id="mainnav" class="navbar-collapse collapse">

              <ul class="nav navbar-nav" id="entitiesMenuEntries">
                               
                               
                
                <li class="dropdown" id="viagens-entry" >
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
                 	aria-haspopup="true" aria-expanded="false" 
                 	data-th-utext=${r"#{label_menu_entry(#{label_Atividades})}"}> Atividades <span class="caret"></span></a>
                 <ul class="dropdown-menu">
               <#list menuEntries as entry>
               	<#if ["Viagem", "Contrato", "Embarcador" ]?seq_contains(entry.entityName)>
	               <#if entry.userManaged>
	                 ${entry.codeManaged}
	               <#else>
			                <li class="dropdown" id="${entry.id}-entry" data-z="${entry.z}" sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" >
			                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			                   aria-haspopup="true" aria-expanded="false"
			                   data-th-utext="${r"#{"}label_menu_entry(${r"#{"}${entry.entityLabel}})}">${entry.entityName}<span class="caret"></span></a>
			                 <ul class="dropdown-menu">
			                  <#if entry.simple == true>
								         <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_${entry.entityName}}">${entry.entityName}</a></li>
			                  <#elseif entry.addDefaultEntries == true>
			                    <#if entry.readOnly == false>
				                   <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/create-form" data-th-href="@{${entry.path}/create-form}" data-th-utext="${r"#{"}label_create_entity(${r"#{"}${entry.entityLabel}})}">Create ${entry.entityName}</a></li>
				                  </#if>
				                  <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_list_entity(${r"#{"}${entry.entityPluralLabel}})}">List ${entry.entityName}</a></li>
			                    <#if entry.entityName == "Viagem">
				                   <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/charts" data-th-href="@{${entry.path}/charts}" data-th-utext="${r"#{"}charts_label(${r"#{"}${entry.entityLabel}})}">charts ${entry.entityName}</a></li>
				                   <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/list_reversa" data-th-href="@{${entry.path}/list_reversa}" data-th-utext="${r"#{"}list_reversa_label(${r"#{"}${entry.entityLabel}})}">list_reversa ${entry.entityName}</a></li>
				                  </#if>
			                  </#if>
			                  <#if entry.finderNamesAndPaths?has_content>
			                    <#list entry.finderNamesAndPaths?keys as finderKey>
			                      <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/${entry.finderNamesAndPaths[finderKey]}" data-th-href="@{${entry.path}/${entry.finderNamesAndPaths[finderKey]}}" data-th-text="${r"#{label_search_entity("}${finderKey}${r")}"}" id="${entry.entityName}${finderKey}" >Search ${finderKey}</a></li>
			                    </#list>
			                  </#if>
	                 </ul>
	                </li>
	               </#if>
                  </#if>
               </#list>
                 </ul>
                </li>
                
                        
                
                <li class="dropdown" id="viagens-entry" >
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
                 	aria-haspopup="true" aria-expanded="false" 
                 	data-th-utext=${r"#{label_menu_entry(#{label_Cadastros})}"}> Cadastros <span class="caret"></span></a>
                 <ul class="dropdown-menu">
               <#list menuEntries as entry>
               	<#if ["Cliente", 
               			"ModeloConjunto", "ModeloVeiculo",
               			"MotivoNegativaDescarga", "MotivoNegativaDiaria",
               			"MotivoPerdaAgenda", "Motorista", "Veiculo"
               		  ]?seq_contains(entry.entityName)>
	               <#if entry.userManaged>
	                 ${entry.codeManaged}
	               <#else>
			                <li class="dropdown" id="${entry.id}-entry" data-z="${entry.z}" sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" >
			                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			                   aria-haspopup="true" aria-expanded="false"
			                   data-th-utext="${r"#{"}label_menu_entry(${r"#{"}${entry.entityLabel}})}">${entry.entityName}<span class="caret"></span></a>
			                 <ul class="dropdown-menu">
			                  <#if entry.simple == true>
								         <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_${entry.entityName}}">${entry.entityName}</a></li>
			                  <#elseif entry.addDefaultEntries == true>
			                    <#if entry.readOnly == false>
				                   <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/create-form" data-th-href="@{${entry.path}/create-form}" data-th-utext="${r"#{"}label_create_entity(${r"#{"}${entry.entityLabel}})}">Create ${entry.entityName}</a></li>
				                  </#if>
				                  <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_list_entity(${r"#{"}${entry.entityPluralLabel}})}">List ${entry.entityName}</a></li>
			                  </#if>
			                  <#if entry.finderNamesAndPaths?has_content>
			                    <#list entry.finderNamesAndPaths?keys as finderKey>
			                      <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/${entry.finderNamesAndPaths[finderKey]}" data-th-href="@{${entry.path}/${entry.finderNamesAndPaths[finderKey]}}" data-th-text="${r"#{label_search_entity("}${finderKey}${r")}"}" id="${entry.entityName}${finderKey}" >Search ${finderKey}</a></li>
			                    </#list>
			                  </#if>
	                 </ul>
	                </li>
	               </#if>
                  </#if>
               </#list>
                 </ul>
                </li>
                
                
                
                <li class="dropdown" id="viagens-entry" >
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
                 	aria-haspopup="true" aria-expanded="false" 
                 	data-th-utext=${r"#{label_menu_entry(#{label_Admin})}"}> Admin <span class="caret"></span></a>
                 <ul class="dropdown-menu">
               <#list menuEntries as entry>
               	<#if !(["Viagem", "ProdutoDevolvido", "Cliente",
               			 "Contrato", "Embarcador", 
               			"ModeloConjunto", "ModeloVeiculo",
               			"MotivoNegativaDescarga", "MotivoNegativaDiaria",
               			"MotivoPerdaAgenda", "Motorista", "Veiculo"
               			]?seq_contains(entry.entityName))>
	               <#if entry.userManaged>
	                 ${entry.codeManaged}
	               <#else>
			                <li class="dropdown" id="${entry.id}-entry" data-z="${entry.z}" sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" >
			                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			                   aria-haspopup="true" aria-expanded="false"
			                   data-th-utext="${r"#{"}label_menu_entry(${r"#{"}${entry.entityLabel}})}">${entry.entityName}<span class="caret"></span></a>
			                 <ul class="dropdown-menu">
			                  <#if entry.simple == true>
								         <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_${entry.entityName}}">${entry.entityName}</a></li>
			                  <#elseif entry.addDefaultEntries == true>
			                    <#if entry.readOnly == false>
				                   <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/create-form" data-th-href="@{${entry.path}/create-form}" data-th-utext="${r"#{"}label_create_entity(${r"#{"}${entry.entityLabel}})}">Create ${entry.entityName}</a></li>
				                  </#if>
				                  <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}" data-th-href="@{${entry.path}}" data-th-utext="${r"#{"}label_list_entity(${r"#{"}${entry.entityPluralLabel}})}">List ${entry.entityName}</a></li>
			                  </#if>
			                  <#if entry.finderNamesAndPaths?has_content>
			                    <#list entry.finderNamesAndPaths?keys as finderKey>
			                      <li sec:authorize="hasRole('${entry.path}/**') or hasRole('ADMIN')" ><a href="${entry.path}/${entry.finderNamesAndPaths[finderKey]}" data-th-href="@{${entry.path}/${entry.finderNamesAndPaths[finderKey]}}" data-th-text="${r"#{label_search_entity("}${finderKey}${r")}"}" id="${entry.entityName}${finderKey}" >Search ${finderKey}</a></li>
			                    </#list>
			                  </#if>
	                 </ul>
	                </li>
	               </#if>
                  </#if>
               </#list>
                 </ul>
                </li>
                
                
                
              </ul>

              <!-- Language select -->
              <ul class="nav navbar-nav navbar-right upper-nav languages" data-th-replace="~{fragments/languages :: languages}">
                <!-- Content replaced by the session template fragment language.html
                -->
                <span>Language data</span>
              </ul>

			  <#if isSecurityEnabled>
              <!-- User menu -->
              <ul class="nav navbar-nav navbar-right upper-nav session" data-th-replace="~{fragments/session-links :: session}">
                <!-- Content replaced by the session template fragment session-links.html
                -->
                <span>User session data</span>
              </ul>
              </#if>


              <!-- User menu links -->
              <ul class="nav navbar-nav navbar-right upper-nav links" data-th-replace="~{fragments/session-links :: links}">
                <!-- Content replaced by the links template fragment session-links.html
                -->
                <span>User session data</span>
              </ul>
           </div>

          </div>
    </nav>

    <!--
    Only the internal content of the following div is included within
    the template, in menu-languages fragment
    -->
    <nav class="navbar navbar-default navbar-static-top" data-th-fragment="menu-languages">

         <div class="container">

            <div class="navbar-header">

              <!-- Brand logo -->
              <div class="organization-logo navbar-brand">
                <a title="${projectName}" href="/" data-th-href="@{/}">
                  <img alt="${projectName}" data-th-src="@{/public/img/logo.png}" src="../../static/public/img/logo.png" />
                </a>
              </div>
              <!-- Name application -->
              <div class="application-name navbar-brand hidden-xs">
                <a data-th-title="${r"#{"}label_goHome}" href="/" data-th-href="@{/}">${projectName}</a>
              </div>

            </div><!-- /navbar-header -->

            <div id="mainnav" class="navbar-collapse collapse">

              <!-- Language select -->
              <ul class="nav navbar-nav navbar-right upper-nav languages" data-th-replace="~{fragments/languages :: languages}">
                <!-- Content replaced by the session template fragment language.html
                -->
                <span>Language data</span>
              </ul>

           </div>

          </div>
    </nav>

  </body>
  </#if>
</html>
