// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.projetologic.controller.json;

import br.com.projetologic.controller.json.MotivoNegativaDiariaDeserializer;
import br.com.projetologic.model.MotivoNegativaDiaria;
import br.com.projetologic.service.api.MotivoNegativaDiariaService;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect MotivoNegativaDiariaDeserializer_Roo_EntityDeserializer {
    
    declare @type: MotivoNegativaDiariaDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MotivoNegativaDiariaService
     */
    public MotivoNegativaDiariaService MotivoNegativaDiariaDeserializer.getMotivoNegativaDiariaService() {
        return motivoNegativaDiariaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param motivoNegativaDiariaService
     */
    public void MotivoNegativaDiariaDeserializer.setMotivoNegativaDiariaService(MotivoNegativaDiariaService motivoNegativaDiariaService) {
        this.motivoNegativaDiariaService = motivoNegativaDiariaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService MotivoNegativaDiariaDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void MotivoNegativaDiariaDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return MotivoNegativaDiaria
     * @throws IOException
     */
    public MotivoNegativaDiaria MotivoNegativaDiariaDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        MotivoNegativaDiaria motivoNegativaDiaria = motivoNegativaDiariaService.findOne(id);
        if (motivoNegativaDiaria == null) {
            throw new NotFoundException("MotivoNegativaDiaria not found");
        }
        return motivoNegativaDiaria;
    }
    
}
