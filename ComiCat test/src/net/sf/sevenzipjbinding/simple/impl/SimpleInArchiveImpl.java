// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.simple.impl;

import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

// Referenced classes of package net.sf.sevenzipjbinding.simple.impl:
//            SimpleInArchiveItemImpl

public class SimpleInArchiveImpl
    implements ISimpleInArchive
{

    private final ISevenZipInArchive sevenZipInArchive;
    private boolean wasClosed;

    public SimpleInArchiveImpl(ISevenZipInArchive isevenzipinarchive)
    {
        wasClosed = false;
        sevenZipInArchive = isevenzipinarchive;
    }

    public void close()
    {
        sevenZipInArchive.close();
        wasClosed = true;
    }

    public ISimpleInArchiveItem getArchiveItem(int i)
    {
        if (i < 0 || i >= sevenZipInArchive.getNumberOfItems())
        {
            throw new SevenZipException((new StringBuilder("Index ")).append(i).append(" is out of range. Number of items in archive: ").append(sevenZipInArchive.getNumberOfItems()).toString());
        } else
        {
            return new SimpleInArchiveItemImpl(this, i);
        }
    }

    public ISimpleInArchiveItem[] getArchiveItems()
    {
        ISimpleInArchiveItem aisimpleinarchiveitem[] = new ISimpleInArchiveItem[getNumberOfItems()];
        for (int i = 0; i < aisimpleinarchiveitem.length; i++)
        {
            aisimpleinarchiveitem[i] = new SimpleInArchiveItemImpl(this, i);
        }

        return aisimpleinarchiveitem;
    }

    public int getNumberOfItems()
    {
        return testAndGetSafeSevenZipInArchive().getNumberOfItems();
    }

    public ISevenZipInArchive testAndGetSafeSevenZipInArchive()
    {
        if (wasClosed)
        {
            throw new SevenZipException("Archive was closed");
        } else
        {
            return sevenZipInArchive;
        }
    }
}
