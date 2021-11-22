// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.thymeleaf;

import br.com.projetologic.controller.thymeleaf.EmbarcadoresItemViagensThymeleafController;
import br.com.projetologic.controller.thymeleaf.EmbarcadoresItemViagensThymeleafLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect EmbarcadoresItemViagensThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: EmbarcadoresItemViagensThymeleafLinkFactory implements MethodLinkFactory<EmbarcadoresItemViagensThymeleafController>;
    
    declare @type: EmbarcadoresItemViagensThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.DATATABLESBYIDSIN = "datatablesByIdsIn";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.CREATEFORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.REMOVEFROMVIAGENS = "removeFromViagens";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.REMOVEFROMVIAGENSBATCH = "removeFromViagensBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmbarcadoresItemViagensThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<EmbarcadoresItemViagensThymeleafController> EmbarcadoresItemViagensThymeleafLinkFactory.getControllerClass() {
        return EmbarcadoresItemViagensThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents EmbarcadoresItemViagensThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(DATATABLES)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DATATABLESBYIDSIN)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatablesByIdsIn(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATEFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).createForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMVIAGENS)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromViagens(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMVIAGENSBATCH)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromViagensBatch(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}