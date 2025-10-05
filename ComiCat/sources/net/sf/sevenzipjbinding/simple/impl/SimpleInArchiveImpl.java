package net.sf.sevenzipjbinding.simple.impl;

import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

public class SimpleInArchiveImpl implements ISimpleInArchive {
    private final ISevenZipInArchive sevenZipInArchive;
    private boolean wasClosed = false;

    public SimpleInArchiveImpl(ISevenZipInArchive iSevenZipInArchive) {
        this.sevenZipInArchive = iSevenZipInArchive;
    }

    public void close() {
        this.sevenZipInArchive.close();
        this.wasClosed = true;
    }

    public ISimpleInArchiveItem getArchiveItem(int i) {
        if (i >= 0 && i < this.sevenZipInArchive.getNumberOfItems()) {
            return new SimpleInArchiveItemImpl(this, i);
        }
        throw new SevenZipException("Index " + i + " is out of range. Number of items in archive: " + this.sevenZipInArchive.getNumberOfItems());
    }

    public ISimpleInArchiveItem[] getArchiveItems() {
        ISimpleInArchiveItem[] iSimpleInArchiveItemArr = new ISimpleInArchiveItem[getNumberOfItems()];
        for (int i = 0; i < iSimpleInArchiveItemArr.length; i++) {
            iSimpleInArchiveItemArr[i] = new SimpleInArchiveItemImpl(this, i);
        }
        return iSimpleInArchiveItemArr;
    }

    public int getNumberOfItems() {
        return testAndGetSafeSevenZipInArchive().getNumberOfItems();
    }

    public ISevenZipInArchive testAndGetSafeSevenZipInArchive() {
        if (!this.wasClosed) {
            return this.sevenZipInArchive;
        }
        throw new SevenZipException("Archive was closed");
    }
}
