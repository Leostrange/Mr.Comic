package net.sf.sevenzipjbinding;

import net.sf.sevenzipjbinding.simple.ISimpleInArchive;

public interface ISevenZipInArchive {
    void close();

    void extract(int[] iArr, boolean z, IArchiveExtractCallback iArchiveExtractCallback);

    ExtractOperationResult extractSlow(int i, ISequentialOutStream iSequentialOutStream);

    ExtractOperationResult extractSlow(int i, ISequentialOutStream iSequentialOutStream, String str);

    ArchiveFormat getArchiveFormat();

    Object getArchiveProperty(PropID propID);

    PropertyInfo getArchivePropertyInfo(PropID propID);

    int getNumberOfArchiveProperties();

    int getNumberOfItems();

    int getNumberOfProperties();

    Object getProperty(int i, PropID propID);

    PropertyInfo getPropertyInfo(PropID propID);

    ISimpleInArchive getSimpleInterface();

    String getStringArchiveProperty(PropID propID);

    String getStringProperty(int i, PropID propID);
}
