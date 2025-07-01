// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.simple.impl;

import java.util.Date;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

// Referenced classes of package net.sf.sevenzipjbinding.simple.impl:
//            SimpleInArchiveImpl

public class SimpleInArchiveItemImpl
    implements ISimpleInArchiveItem
{

    private final int index;
    private final SimpleInArchiveImpl simpleInArchiveImpl;

    public SimpleInArchiveItemImpl(ISevenZipInArchive isevenzipinarchive, int i)
    {
        simpleInArchiveImpl = new SimpleInArchiveImpl(isevenzipinarchive);
        index = i;
    }

    public SimpleInArchiveItemImpl(SimpleInArchiveImpl simpleinarchiveimpl, int i)
    {
        simpleInArchiveImpl = simpleinarchiveimpl;
        index = i;
    }

    public ExtractOperationResult extractSlow(ISequentialOutStream isequentialoutstream)
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().extractSlow(index, isequentialoutstream);
    }

    public ExtractOperationResult extractSlow(ISequentialOutStream isequentialoutstream, String s)
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().extractSlow(index, isequentialoutstream, s);
    }

    public Integer getAttributes()
    {
        return (Integer)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.ATTRIBUTES);
    }

    public Integer getCRC()
    {
        return (Integer)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.ATTRIBUTES);
    }

    public String getComment()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.COMMENT);
    }

    public Date getCreationTime()
    {
        return (Date)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.CREATION_TIME);
    }

    public String getGroup()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.GROUP);
    }

    public String getHostOS()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.HOST_OS);
    }

    public int getItemIndex()
    {
        return index;
    }

    public Date getLastAccessTime()
    {
        return (Date)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.LAST_ACCESS_TIME);
    }

    public Date getLastWriteTime()
    {
        return (Date)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.LAST_WRITE_TIME);
    }

    public String getMethod()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.METHOD);
    }

    public Long getPackedSize()
    {
        return (Long)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.PACKED_SIZE);
    }

    public String getPath()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.PATH);
    }

    public Integer getPosition()
    {
        return (Integer)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.POSITION);
    }

    public Long getSize()
    {
        return (Long)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.SIZE);
    }

    public String getUser()
    {
        return simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(index, PropID.USER);
    }

    public Boolean isCommented()
    {
        return (Boolean)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.COMMENTED);
    }

    public boolean isEncrypted()
    {
        return ((Boolean)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.ENCRYPTED)).booleanValue();
    }

    public boolean isFolder()
    {
        return ((Boolean)simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(index, PropID.IS_FOLDER)).booleanValue();
    }
}
