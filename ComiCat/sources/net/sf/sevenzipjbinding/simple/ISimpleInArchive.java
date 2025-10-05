package net.sf.sevenzipjbinding.simple;

public interface ISimpleInArchive {
    void close();

    ISimpleInArchiveItem getArchiveItem(int i);

    ISimpleInArchiveItem[] getArchiveItems();

    int getNumberOfItems();
}
