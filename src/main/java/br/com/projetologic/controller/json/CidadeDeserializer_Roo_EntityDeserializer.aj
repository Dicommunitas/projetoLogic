// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.CidadeDeserializer;
import br.com.projetologic.model.Cidade;
import br.com.projetologic.service.api.CidadeService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect CidadeDeserializer_Roo_EntityDeserializer {
    
    declare @type: CidadeDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CidadeService
     */
    public CidadeService CidadeDeserializer.getCidadeService() {
        return cidadeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cidadeService
     */
    public void CidadeDeserializer.setCidadeService(CidadeService cidadeService) {
        this.cidadeService = cidadeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CidadeDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CidadeDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Cidade
     * @throws IOException
     */
    public Cidade CidadeDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Cidade cidade = cidadeService.findOne(id);
        if (cidade == null) {
            throw new NotFoundException("Cidade not found");
        }
        return cidade;
    }
    
}
