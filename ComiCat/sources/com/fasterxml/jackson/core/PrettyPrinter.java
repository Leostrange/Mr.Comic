package com.fasterxml.jackson.core;

public interface PrettyPrinter {
    void beforeArrayValues(JsonGenerator jsonGenerator);

    void beforeObjectEntries(JsonGenerator jsonGenerator);

    void writeArrayValueSeparator(JsonGenerator jsonGenerator);

    void writeEndArray(JsonGenerator jsonGenerator, int i);

    void writeEndObject(JsonGenerator jsonGenerator, int i);

    void writeObjectEntrySeparator(JsonGenerator jsonGenerator);

    void writeObjectFieldValueSeparator(JsonGenerator jsonGenerator);

    void writeRootValueSeparator(JsonGenerator jsonGenerator);

    void writeStartArray(JsonGenerator jsonGenerator);

    void writeStartObject(JsonGenerator jsonGenerator);
}
