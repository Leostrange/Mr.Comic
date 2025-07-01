// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


// Referenced classes of package net.sf.sevenzipjbinding:
//            ISequentialInStream

public interface IInStream
    extends ISequentialInStream
{

    public static final int SEEK_CUR = 1;
    public static final int SEEK_END = 2;
    public static final int SEEK_SET = 0;

    public abstract void close();

    public abstract long seek(long l, int i);
}
