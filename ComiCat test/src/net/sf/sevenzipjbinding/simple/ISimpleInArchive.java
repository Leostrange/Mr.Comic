// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.simple;


// Referenced classes of package net.sf.sevenzipjbinding.simple:
//            ISimpleInArchiveItem

public interface ISimpleInArchive
{

    public abstract void close();

    public abstract ISimpleInArchiveItem getArchiveItem(int i);

    public abstract ISimpleInArchiveItem[] getArchiveItems();

    public abstract int getNumberOfItems();
}
