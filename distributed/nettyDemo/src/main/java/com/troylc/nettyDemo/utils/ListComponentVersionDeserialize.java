package com.troylc.nettyDemo.utils;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.troylc.nettyDemo.domain.DmpComponentVersion;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2015/12/8.
 */
public class ListComponentVersionDeserialize extends JsonDeserializer<List<DmpComponentVersion>> {
    @Override
    public List<DmpComponentVersion> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext)
            throws IOException, JsonProcessingException {
        List<DmpComponentVersion> componentVersions = new ArrayList<DmpComponentVersion>();
        try {
            componentVersions = JSON.parseArray(jsonParser.getText(), DmpComponentVersion.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return componentVersions;
    }
}
