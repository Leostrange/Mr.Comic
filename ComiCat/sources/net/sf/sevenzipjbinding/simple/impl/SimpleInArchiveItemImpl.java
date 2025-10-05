package net.sf.sevenzipjbinding.simple.impl;

import java.util.Date;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

public class SimpleInArchiveItemImpl implements ISimpleInArchiveItem {
    private final int index;
    private final SimpleInArchiveImpl simpleInArchiveImpl;

    public SimpleInArchiveItemImpl(ISevenZipInArchive iSevenZipInArchive, int i) {
        this.simpleInArchiveImpl = new SimpleInArchiveImpl(iSevenZipInArchive);
        this.index = i;
    }

    public SimpleInArchiveItemImpl(SimpleInArchiveImpl simpleInArchiveImpl2, int i) {
        this.simpleInArchiveImpl = simpleInArchiveImpl2;
        this.index = i;
    }

    public ExtractOperationResult extractSlow(ISequentialOutStream iSequentialOutStream) {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().extractSlow(this.index, iSequentialOutStream);
    }

    public ExtractOperationResult extractSlow(ISequentialOutStream iSequentialOutStream, String str) {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().extractSlow(this.index, iSequentialOutStream, str);
    }

    public Integer getAttributes() {
        return (Integer) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.ATTRIBUTES);
    }

    public Integer getCRC() {
        return (Integer) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.ATTRIBUTES);
    }

    public String getComment() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.COMMENT);
    }

    public Date getCreationTime() {
        return (Date) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.CREATION_TIME);
    }

    public String getGroup() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.GROUP);
    }

    public String getHostOS() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.HOST_OS);
    }

    public int getItemIndex() {
        return this.index;
    }

    public Date getLastAccessTime() {
        return (Date) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.LAST_ACCESS_TIME);
    }

    public Date getLastWriteTime() {
        return (Date) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.LAST_WRITE_TIME);
    }

    public String getMethod() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.METHOD);
    }

    public Long getPackedSize() {
        return (Long) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.PACKED_SIZE);
    }

    public String getPath() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.PATH);
    }

    public Integer getPosition() {
        return (Integer) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.POSITION);
    }

    public Long getSize() {
        return (Long) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.SIZE);
    }

    public String getUser() {
        return this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getStringProperty(this.index, PropID.USER);
    }

    public Boolean isCommented() {
        return (Boolean) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.COMMENTED);
    }

    public boolean isEncrypted() {
        return ((Boolean) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.ENCRYPTED)).booleanValue();
    }

    public boolean isFolder() {
        return ((Boolean) this.simpleInArchiveImpl.testAndGetSafeSevenZipInArchive().getProperty(this.index, PropID.IS_FOLDER)).booleanValue();
    }
}
