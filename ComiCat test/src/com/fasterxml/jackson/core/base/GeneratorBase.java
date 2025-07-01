// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonWriteContext;

public abstract class GeneratorBase extends JsonGenerator
{

    protected static final int DERIVED_FEATURES_MASK;
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

    protected GeneratorBase(int i, ObjectCodec objectcodec)
    {
        _features = i;
        _objectCodec = objectcodec;
        if (com.fasterxml.jackson.core.JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i))
        {
            objectcodec = DupDetector.rootDetector(this);
        } else
        {
            objectcodec = null;
        }
        _writeContext = JsonWriteContext.createRootContext(objectcodec);
        _cfgNumbersAsStrings = com.fasterxml.jackson.core.JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.enabledIn(i);
    }

    protected final int _decodeSurrogate(int i, int j)
    {
        if (j < 56320 || j > 57343)
        {
            _reportError((new StringBuilder("Incomplete surrogate pair: first char 0x")).append(Integer.toHexString(i)).append(", second 0x").append(Integer.toHexString(j)).toString());
        }
        return 0x10000 + (i - 55296 << 10) + (j - 56320);
    }

    public abstract void _releaseBuffers();

    public abstract void _verifyValueWrite(String s);

    public void close()
    {
        _closed = true;
    }

    public JsonWriteContext getOutputContext()
    {
        return _writeContext;
    }

    public final boolean isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature feature)
    {
        return (_features & feature.getMask()) != 0;
    }

    static 
    {
        DERIVED_FEATURES_MASK = com.fasterxml.jackson.core.JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS.getMask() | com.fasterxml.jackson.core.JsonGenerator.Feature.ESCAPE_NON_ASCII.getMask() | com.fasterxml.jackson.core.JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION.getMask();
    }
}
