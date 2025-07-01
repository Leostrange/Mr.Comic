// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core;


// Referenced classes of package com.fasterxml.jackson.core:
//            JsonParser

public static final class _defaultState extends Enum
{

    private static final IGNORE_UNDEFINED $VALUES[];
    public static final IGNORE_UNDEFINED ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER;
    public static final IGNORE_UNDEFINED ALLOW_COMMENTS;
    public static final IGNORE_UNDEFINED ALLOW_NON_NUMERIC_NUMBERS;
    public static final IGNORE_UNDEFINED ALLOW_NUMERIC_LEADING_ZEROS;
    public static final IGNORE_UNDEFINED ALLOW_SINGLE_QUOTES;
    public static final IGNORE_UNDEFINED ALLOW_UNQUOTED_CONTROL_CHARS;
    public static final IGNORE_UNDEFINED ALLOW_UNQUOTED_FIELD_NAMES;
    public static final IGNORE_UNDEFINED ALLOW_YAML_COMMENTS;
    public static final IGNORE_UNDEFINED AUTO_CLOSE_SOURCE;
    public static final IGNORE_UNDEFINED IGNORE_UNDEFINED;
    public static final IGNORE_UNDEFINED STRICT_DUPLICATE_DETECTION;
    private final boolean _defaultState;
    private final int _mask = 1 << ordinal();

    public static int collectDefaults()
    {
        int j = 0;
        _defaultState a_ldefaultstate[] = values();
        int l = a_ldefaultstate.length;
        for (int i = 0; i < l;)
        {
            _defaultState _ldefaultstate = a_ldefaultstate[i];
            int k = j;
            if (_ldefaultstate.enabledByDefault())
            {
                k = j | _ldefaultstate.getMask();
            }
            i++;
            j = k;
        }

        return j;
    }

    public static getMask valueOf(String s)
    {
        return (getMask)Enum.valueOf(com/fasterxml/jackson/core/JsonParser$Feature, s);
    }

    public static getMask[] values()
    {
        return (getMask[])$VALUES.clone();
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
        AUTO_CLOSE_SOURCE = new <init>("AUTO_CLOSE_SOURCE", 0, true);
        ALLOW_COMMENTS = new <init>("ALLOW_COMMENTS", 1, false);
        ALLOW_YAML_COMMENTS = new <init>("ALLOW_YAML_COMMENTS", 2, false);
        ALLOW_UNQUOTED_FIELD_NAMES = new <init>("ALLOW_UNQUOTED_FIELD_NAMES", 3, false);
        ALLOW_SINGLE_QUOTES = new <init>("ALLOW_SINGLE_QUOTES", 4, false);
        ALLOW_UNQUOTED_CONTROL_CHARS = new <init>("ALLOW_UNQUOTED_CONTROL_CHARS", 5, false);
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER = new <init>("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 6, false);
        ALLOW_NUMERIC_LEADING_ZEROS = new <init>("ALLOW_NUMERIC_LEADING_ZEROS", 7, false);
        ALLOW_NON_NUMERIC_NUMBERS = new <init>("ALLOW_NON_NUMERIC_NUMBERS", 8, false);
        STRICT_DUPLICATE_DETECTION = new <init>("STRICT_DUPLICATE_DETECTION", 9, false);
        IGNORE_UNDEFINED = new <init>("IGNORE_UNDEFINED", 10, false);
        $VALUES = (new .VALUES[] {
            AUTO_CLOSE_SOURCE, ALLOW_COMMENTS, ALLOW_YAML_COMMENTS, ALLOW_UNQUOTED_FIELD_NAMES, ALLOW_SINGLE_QUOTES, ALLOW_UNQUOTED_CONTROL_CHARS, ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER, ALLOW_NUMERIC_LEADING_ZEROS, ALLOW_NON_NUMERIC_NUMBERS, STRICT_DUPLICATE_DETECTION, 
            IGNORE_UNDEFINED
        });
    }

    private (String s, int i, boolean flag)
    {
        super(s, i);
        _defaultState = flag;
    }
}
