// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            PropID, IInStream

public interface IArchiveOpenVolumeCallback
{

    public abstract Object getProperty(PropID propid);

    public abstract IInStream getStream(String s);
}
