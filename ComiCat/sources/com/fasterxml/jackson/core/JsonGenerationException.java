package com.fasterxml.jackson.core;

public class JsonGenerationException extends JsonProcessingException {
    protected transient JsonGenerator _processor;

    public JsonGenerationException(String str, JsonGenerator jsonGenerator) {
        super(str, (JsonLocation) null);
        this._processor = jsonGenerator;
    }
}
