// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;

import net.sf.sevenzipjbinding.simple.ISimpleInArchive;

// Referenced classes of package net.sf.sevenzipjbinding:
//            IArchiveExtractCallback, ISequentialOutStream, ExtractOperationResult, ArchiveFormat, 
//            PropID, PropertyInfo

public interface ISevenZipInArchive
{

    public abstract void close();

    public abstract void extract(int ai[], boolean flag, IArchiveExtractCallback iarchiveextractcallback);

    public abstract ExtractOperationResult extractSlow(int i, ISequentialOutStream isequentialoutstream);

    public abstract ExtractOperationResult extractSlow(int i, ISequentialOutStream isequentialoutstream, String s);

    public abstract ArchiveFormat getArchiveFormat();

    public abstract Object getArchiveProperty(PropID propid);

    public abstract PropertyInfo getArchivePropertyInfo(PropID propid);

    public abstract int getNumberOfArchiveProperties();

    public abstract int getNumberOfItems();

    public abstract int getNumberOfProperties();

    public abstract Object getProperty(int i, PropID propid);

    public abstract PropertyInfo getPropertyInfo(PropID propid);

    public abstract ISimpleInArchive getSimpleInterface();

    public abstract String getStringArchiveProperty(PropID propid);

    public abstract String getStringProperty(int i, PropID propid);
}
