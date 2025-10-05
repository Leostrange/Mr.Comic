package net.sf.sevenzipjbinding;

public interface IInStream extends ISequentialInStream {
    public static final int SEEK_CUR = 1;
    public static final int SEEK_END = 2;
    public static final int SEEK_SET = 0;

    void close();

    long seek(long j, int i);
}
