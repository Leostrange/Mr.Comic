package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonWriteContext;

public abstract class GeneratorBase extends JsonGenerator {
    protected static final int DERIVED_FEATURES_MASK = ((JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.getMask() | JsonGenerator.Feature.ESCAPE_NON_ASCII.getMask()) | JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.getMask());
    protected final String WRITE_BINARY = "write a binary value";
    protected final String WRITE_BOOLEAN = "write a boolean value";
    protected final String WRITE_NULL = "write a null";
    protected final String WRITE_NUMBER = "write a number";
    protected final String WRITE_RAW = "write a raw (unencoded) value";
    protected final String WRITE_STRING = "write a string";
    protected boolean _cfgNumbersAsStrings;
    protected boolean _closed;
    protected int _features;
    protected ObjectCodec _objectCodec;
    protected JsonWriteContext _writeContext;

    protected GeneratorBase(int i, ObjectCodec objectCodec) {
        this._features = i;
        this._objectCodec = objectCodec;
        this._writeContext = JsonWriteContext.createRootContext(JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector((JsonGenerator) this) : null);
        this._cfgNumbersAsStrings = JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
    }

    /* access modifiers changed from: protected */
    public final int _decodeSurrogate(int i, int i2) {
        if (i2 < 56320 || i2 > 57343) {
            _reportError("Incomplete surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2));
        }
        return 65536 + ((i - 55296) << 10) + (i2 - 56320);
    }

    public abstract void _releaseBuffers();

    public abstract void _verifyValueWrite(String str);

    public void close() {
        this._closed = true;
    }

    public JsonWriteContext getOutputContext() {
        return this._writeContext;
    }

    public final boolean isEnabled(JsonGenerator.Feature feature) {
        return (this._features & feature.getMask()) != 0;
    }
}
