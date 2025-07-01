// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


public final class ExtractOperationResult extends Enum
{

    private static final ExtractOperationResult $VALUES[];
    public static final ExtractOperationResult CRCERROR;
    public static final ExtractOperationResult DATAERROR;
    public static final ExtractOperationResult OK;
    public static final ExtractOperationResult UNKNOWN_OPERATION_RESULT;
    public static final ExtractOperationResult UNSUPPORTEDMETHOD;

    private ExtractOperationResult(String s, int i)
    {
        super(s, i);
    }

    public static ExtractOperationResult getOperationResult(int i)
    {
        if (i >= 0 && i < values().length)
        {
            return values()[i];
        } else
        {
            return UNKNOWN_OPERATION_RESULT;
        }
    }

    public static ExtractOperationResult valueOf(String s)
    {
        return (ExtractOperationResult)Enum.valueOf(net/sf/sevenzipjbinding/ExtractOperationResult, s);
    }

    public static ExtractOperationResult[] values()
    {
        return (ExtractOperationResult[])$VALUES.clone();
    }

    static 
    {
        OK = new ExtractOperationResult("OK", 0);
        UNSUPPORTEDMETHOD = new ExtractOperationResult("UNSUPPORTEDMETHOD", 1);
        DATAERROR = new ExtractOperationResult("DATAERROR", 2);
        CRCERROR = new ExtractOperationResult("CRCERROR", 3);
        UNKNOWN_OPERATION_RESULT = new ExtractOperationResult("UNKNOWN_OPERATION_RESULT", 4);
        $VALUES = (new ExtractOperationResult[] {
            OK, UNSUPPORTEDMETHOD, DATAERROR, CRCERROR, UNKNOWN_OPERATION_RESULT
        });
    }
}
