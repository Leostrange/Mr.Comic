// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core;

import java.io.Closeable;

// Referenced classes of package com.fasterxml.jackson.core:
//            JsonParseException, JsonToken, JsonLocation

public abstract class JsonParser
    implements Closeable
{
    public static final class Feature extends Enum
    {

        private static final Feature $VALUES[];
        public static final Feature ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER;
        public static final Feature ALLOW_COMMENTS;
        public static final Feature ALLOW_NON_NUMERIC_NUMBERS;
        public static final Feature ALLOW_NUMERIC_LEADING_ZEROS;
        public static final Feature ALLOW_SINGLE_QUOTES;
        public static final Feature ALLOW_UNQUOTED_CONTROL_CHARS;
        public static final Feature ALLOW_UNQUOTED_FIELD_NAMES;
        public static final Feature ALLOW_YAML_COMMENTS;
        public static final Feature AUTO_CLOSE_SOURCE;
        public static final Feature IGNORE_UNDEFINED;
        public static final Feature STRICT_DUPLICATE_DETECTION;
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
            return (Feature)Enum.valueOf(com/fasterxml/jackson/core/JsonParser$Feature, s);
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
            AUTO_CLOSE_SOURCE = new Feature("AUTO_CLOSE_SOURCE", 0, true);
            ALLOW_COMMENTS = new Feature("ALLOW_COMMENTS", 1, false);
            ALLOW_YAML_COMMENTS = new Feature("ALLOW_YAML_COMMENTS", 2, false);
            ALLOW_UNQUOTED_FIELD_NAMES = new Feature("ALLOW_UNQUOTED_FIELD_NAMES", 3, false);
            ALLOW_SINGLE_QUOTES = new Feature("ALLOW_SINGLE_QUOTES", 4, false);
            ALLOW_UNQUOTED_CONTROL_CHARS = new Feature("ALLOW_UNQUOTED_CONTROL_CHARS", 5, false);
            ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER = new Feature("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 6, false);
            ALLOW_NUMERIC_LEADING_ZEROS = new Feature("ALLOW_NUMERIC_LEADING_ZEROS", 7, false);
            ALLOW_NON_NUMERIC_NUMBERS = new Feature("ALLOW_NON_NUMERIC_NUMBERS", 8, false);
            STRICT_DUPLICATE_DETECTION = new Feature("STRICT_DUPLICATE_DETECTION", 9, false);
            IGNORE_UNDEFINED = new Feature("IGNORE_UNDEFINED", 10, false);
            $VALUES = (new Feature[] {
                AUTO_CLOSE_SOURCE, ALLOW_COMMENTS, ALLOW_YAML_COMMENTS, ALLOW_UNQUOTED_FIELD_NAMES, ALLOW_SINGLE_QUOTES, ALLOW_UNQUOTED_CONTROL_CHARS, ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER, ALLOW_NUMERIC_LEADING_ZEROS, ALLOW_NON_NUMERIC_NUMBERS, STRICT_DUPLICATE_DETECTION, 
                IGNORE_UNDEFINED
            });
        }

        private Feature(String s, int i, boolean flag)
        {
            super(s, i);
            _defaultState = flag;
        }
    }


    protected int _features;

    protected JsonParser()
    {
    }

    protected JsonParser(int i)
    {
        _features = i;
    }

    protected JsonParseException _constructError(String s)
    {
        return new JsonParseException(this, s);
    }

    public boolean getBooleanValue()
    {
        JsonToken jsontoken = getCurrentToken();
        if (jsontoken == JsonToken.VALUE_TRUE)
        {
            return true;
        }
        if (jsontoken == JsonToken.VALUE_FALSE)
        {
            return false;
        } else
        {
            throw new JsonParseException(this, String.format("Current token (%s) not of boolean type", new Object[] {
                jsontoken
            }));
        }
    }

    public abstract JsonLocation getCurrentLocation();

    public abstract String getCurrentName();

    public abstract JsonToken getCurrentToken();

    public abstract double getDoubleValue();

    public abstract long getLongValue();

    public abstract String getText();

    public boolean isEnabled(Feature feature)
    {
        return feature.enabledIn(_features);
    }

    public abstract JsonToken nextToken();

    public abstract JsonParser skipChildren();
}
