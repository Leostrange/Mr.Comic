// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import java.io.Serializable;

public class DefaultPrettyPrinter
    implements PrettyPrinter, Serializable
{
    public static interface Indenter
    {

        public abstract boolean isInline();

        public abstract void writeIndentation(JsonGenerator jsongenerator, int i);
    }


    public static final SerializedString DEFAULT_ROOT_VALUE_SEPARATOR = new SerializedString(" ");
    protected Indenter _arrayIndenter;
    protected transient int _nesting;
    protected Indenter _objectIndenter;
    protected final SerializableString _rootSeparator;
    protected boolean _spacesInObjectEntries;

    public void beforeArrayValues(JsonGenerator jsongenerator)
    {
        _arrayIndenter.writeIndentation(jsongenerator, _nesting);
    }

    public void beforeObjectEntries(JsonGenerator jsongenerator)
    {
        _objectIndenter.writeIndentation(jsongenerator, _nesting);
    }

    public void writeArrayValueSeparator(JsonGenerator jsongenerator)
    {
        jsongenerator.writeRaw(',');
        _arrayIndenter.writeIndentation(jsongenerator, _nesting);
    }

    public void writeEndArray(JsonGenerator jsongenerator, int i)
    {
        if (!_arrayIndenter.isInline())
        {
            _nesting = _nesting - 1;
        }
        if (i > 0)
        {
            _arrayIndenter.writeIndentation(jsongenerator, _nesting);
        } else
        {
            jsongenerator.writeRaw(' ');
        }
        jsongenerator.writeRaw(']');
    }

    public void writeEndObject(JsonGenerator jsongenerator, int i)
    {
        if (!_objectIndenter.isInline())
        {
            _nesting = _nesting - 1;
        }
        if (i > 0)
        {
            _objectIndenter.writeIndentation(jsongenerator, _nesting);
        } else
        {
            jsongenerator.writeRaw(' ');
        }
        jsongenerator.writeRaw('}');
    }

    public void writeObjectEntrySeparator(JsonGenerator jsongenerator)
    {
        jsongenerator.writeRaw(',');
        _objectIndenter.writeIndentation(jsongenerator, _nesting);
    }

    public void writeObjectFieldValueSeparator(JsonGenerator jsongenerator)
    {
        if (_spacesInObjectEntries)
        {
            jsongenerator.writeRaw(" : ");
            return;
        } else
        {
            jsongenerator.writeRaw(':');
            return;
        }
    }

    public void writeRootValueSeparator(JsonGenerator jsongenerator)
    {
        if (_rootSeparator != null)
        {
            jsongenerator.writeRaw(_rootSeparator);
        }
    }

    public void writeStartArray(JsonGenerator jsongenerator)
    {
        if (!_arrayIndenter.isInline())
        {
            _nesting = _nesting + 1;
        }
        jsongenerator.writeRaw('[');
    }

    public void writeStartObject(JsonGenerator jsongenerator)
    {
        jsongenerator.writeRaw('{');
        if (!_objectIndenter.isInline())
        {
            _nesting = _nesting + 1;
        }
    }

}
