// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            IProgress, ExtractAskMode, ISequentialOutStream, ExtractOperationResult

public interface IArchiveExtractCallback
    extends IProgress
{

    public abstract ISequentialOutStream getStream(int i, ExtractAskMode extractaskmode);

    public abstract void prepareOperation(ExtractAskMode extractaskmode);

    public abstract void setOperationResult(ExtractOperationResult extractoperationresult);
}
