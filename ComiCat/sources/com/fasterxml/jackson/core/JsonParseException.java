package com.fasterxml.jackson.core;

public class JsonParseException extends JsonProcessingException {
    protected transient JsonParser _processor;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public JsonParseException(JsonParser jsonParser, String str) {
        super(str, jsonParser == null ? null : jsonParser.getCurrentLocation());
        this._processor = jsonParser;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public JsonParseException(JsonParser jsonParser, String str, Throwable th) {
        super(str, jsonParser == null ? null : jsonParser.getCurrentLocation(), th);
        this._processor = jsonParser;
    }
}
