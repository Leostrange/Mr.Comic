// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.Closeable;
import java.io.Flushable;

// Referenced classes of package com.fasterxml.jackson.core:
//            JsonGenerationException, SerializableString, PrettyPrinter

public abstract class JsonGenerator
    implements Closeable, Flushable
{
    public static final class Feature extends Enum
    {

        private static final Feature $VALUES[];
        public static final Feature AUTO_CLOSE_JSON_CONTENT;
        public static final Feature AUTO_CLOSE_TARGET;
        public static final Feature ESCAPE_NON_ASCII;
        public static final Feature FLUSH_PASSED_TO_STREAM;
        public static final Feature IGNORE_UNKNOWN;
        public static final Feature QUOTE_FIELD_NAMES;
        public static final Feature QUOTE_NON_NUMERIC_NUMBERS;
        public static final Feature STRICT_DUPLICATE_DETECTION;
        public static final Feature WRITE_BIGDECIMAL_AS_PLAIN;
        public static final Feature WRITE_NUMBERS_AS_STRINGS;
        private final boolean _defaultState;
        private final int _mask = 1 << ordinal();

        public static int collectDefaults()
        {
            int j = 0;
            Feature afeature[] = values();
            int l = afeature.length;
            for (int i = 0; i < l;)
            {
                Feature feature = afeature[i];
                int k = j;
                if (feature.enabledByDefault())
                {
                    k = j | feature.getMask();
                }
                i++;
                j = k;
            }

            return j;
        }

        public static Feature valueOf(String s)
        {
            return (Feature)Enum.valueOf(com/fasterxml/jackson/core/JsonGenerator$Feature, s);
        }

        public static Feature[] values()
        {
            return (Feature[])$VALUES.clone();
        }

        public final boolean enabledByDefault()
        {
            return _defaultState;
        }

        public final boolean enabledIn(int i)
        {
            return (_mask & i) != 0;
        }

        public final int getMask()
        {
            return _mask;
        }

        static 
        {
            AUTO_CLOSE_TARGET = new Feature("AUTO_CLOSE_TARGET", 0, true);
            AUTO_CLOSE_JSON_CONTENT = new Feature("AUTO_CLOSE_JSON_CONTENT", 1, true);
            FLUSH_PASSED_TO_STREAM = new Feature("FLUSH_PASSED_TO_STREAM", 2, true);
            QUOTE_FIELD_NAMES = new Feature("QUOTE_FIELD_NAMES", 3, true);
            QUOTE_NON_NUMERIC_NUMBERS = new Feature("QUOTE_NON_NUMERIC_NUMBERS", 4, true);
            WRITE_NUMBERS_AS_STRINGS = new Feature("WRITE_NUMBERS_AS_STRINGS", 5, false);
            WRITE_BIGDECIMAL_AS_PLAIN = new Feature("WRITE_BIGDECIMAL_AS_PLAIN", 6, false);
            ESCAPE_NON_ASCII = new Feature("ESCAPE_NON_ASCII", 7, false);
            STRICT_DUPLICATE_DETECTION = new Feature("STRICT_DUPLICATE_DETECTION", 8, false);
            IGNORE_UNKNOWN = new Feature("IGNORE_UNKNOWN", 9, false);
            $VALUES = (new Feature[] {
                AUTO_CLOSE_TARGET, AUTO_CLOSE_JSON_CONTENT, FLUSH_PASSED_TO_STREAM, QUOTE_FIELD_NAMES, QUOTE_NON_NUMERIC_NUMBERS, WRITE_NUMBERS_AS_STRINGS, WRITE_BIGDECIMAL_AS_PLAIN, ESCAPE_NON_ASCII, STRICT_DUPLICATE_DETECTION, IGNORE_UNKNOWN
            });
        }

        private Feature(String s, int i, boolean flag)
        {
            super(s, i);
            _defaultState = flag;
        }
    }


    protected PrettyPrinter _cfgPrettyPrinter;

    protected JsonGenerator()
    {
    }

    protected void _reportError(String s)
    {
        throw new JsonGenerationException(s, this);
    }

    protected final void _throwInternal()
    {
        VersionUtil.throwInternal();
    }

    public abstract void flush();

    public JsonGenerator setCharacterEscapes(CharacterEscapes characterescapes)
    {
        return this;
    }

    public JsonGenerator setHighestNonEscapedChar(int i)
    {
        return this;
    }

    public JsonGenerator setRootValueSeparator(SerializableString serializablestring)
    {
        throw new UnsupportedOperationException();
    }

    public abstract void writeBoolean(boolean flag);

    public abstract void writeEndArray();

    public abstract void writeEndObject();

    public abstract void writeFieldName(String s);

    public abstract void writeNull();

    public abstract void writeNumber(double d);

    public abstract void writeNumber(long l);

    public abstract void writeRaw(char c);

    public void writeRaw(SerializableString serializablestring)
    {
        writeRaw(serializablestring.getValue());
    }

    public abstract void writeRaw(String s);

    public abstract void writeStartArray();

    public void writeStartArray(int i)
    {
        writeStartArray();
    }

    public abstract void writeStartObject();

    public abstract void writeString(String s);

    public void writeStringField(String s, String s1)
    {
        writeFieldName(s);
        writeString(s1);
    }
}
