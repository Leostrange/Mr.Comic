// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import net.sf.sevenzipjbinding.ExtractAskMode;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IArchiveExtractCallback;
import net.sf.sevenzipjbinding.ISequentialOutStream;

// Referenced classes of package net.sf.sevenzipjbinding.impl:
//            InArchiveImpl

public static class sequentialOutStreamParam
    implements IArchiveExtractCallback
{

    private ExtractOperationResult extractOperationResult;
    ISequentialOutStream sequentialOutStreamParam;

    public ExtractOperationResult getExtractOperationResult()
    {
        return extractOperationResult;
    }

    public ISequentialOutStream getStream(int i, ExtractAskMode extractaskmode)
    {
        if (extractaskmode.equals(ExtractAskMode.EXTRACT))
        {
            return sequentialOutStreamParam;
        } else
        {
            return null;
        }
    }

    public void prepareOperation(ExtractAskMode extractaskmode)
    {
    }

    public void setCompleted(long l)
    {
    }

    public void setOperationResult(ExtractOperationResult extractoperationresult)
    {
        extractOperationResult = extractoperationresult;
    }

    public void setTotal(long l)
    {
    }

    public (ISequentialOutStream isequentialoutstream)
    {
        sequentialOutStreamParam = isequentialoutstream;
    }
}
