// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


public final class ExtractAskMode extends Enum
{

    private static final ExtractAskMode $VALUES[];
    public static final ExtractAskMode EXTRACT;
    public static final ExtractAskMode SKIP;
    public static final ExtractAskMode TEST;
    public static final ExtractAskMode UNKNOWN_ASK_MODE;

    private ExtractAskMode(String s, int i)
    {
        super(s, i);
    }

    public static ExtractAskMode getExtractAskModeByIndex(int i)
    {
        ExtractAskMode extractaskmode = UNKNOWN_ASK_MODE;
        switch (i)
        {
        default:
            return extractaskmode;

        case 0: // '\0'
            return EXTRACT;

        case 1: // '\001'
            return TEST;

        case 2: // '\002'
            return SKIP;
        }
    }

    public static ExtractAskMode valueOf(String s)
    {
        return (ExtractAskMode)Enum.valueOf(net/sf/sevenzipjbinding/ExtractAskMode, s);
    }

    public static ExtractAskMode[] values()
    {
        return (ExtractAskMode[])$VALUES.clone();
    }

    static 
    {
        EXTRACT = new ExtractAskMode("EXTRACT", 0);
        TEST = new ExtractAskMode("TEST", 1);
        SKIP = new ExtractAskMode("SKIP", 2);
        UNKNOWN_ASK_MODE = new ExtractAskMode("UNKNOWN_ASK_MODE", 3);
        $VALUES = (new ExtractAskMode[] {
            EXTRACT, TEST, SKIP, UNKNOWN_ASK_MODE
        });
    }
}
