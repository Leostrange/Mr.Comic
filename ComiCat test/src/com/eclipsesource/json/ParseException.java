// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


public class ParseException extends RuntimeException
{

    private final int column;
    private final int line;
    private final int offset;

    ParseException(String s, int i, int j, int k)
    {
        super((new StringBuilder()).append(s).append(" at ").append(j).append(":").append(k).toString());
        offset = i;
        line = j;
        column = k;
    }

    public int getColumn()
    {
        return column;
    }

    public int getLine()
    {
        return line;
    }

    public int getOffset()
    {
        return offset;
    }
}
