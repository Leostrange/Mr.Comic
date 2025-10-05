package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.SevenZipException;

public class RandomAccessFileInStream implements IInStream {
    private final RandomAccessFile randomAccessFile;

    public RandomAccessFileInStream(RandomAccessFile randomAccessFile2) {
        this.randomAccessFile = randomAccessFile2;
    }

    public void close() {
        this.randomAccessFile.close();
    }

    public int read(byte[] bArr) {
        try {
            int read = this.randomAccessFile.read(bArr);
            if (read == -1) {
                return 0;
            }
            return read;
        } catch (IOException e) {
            throw new SevenZipException("Error reading random access file", e);
        }
    }

    public long seek(long j, int i) {
        switch (i) {
            case 0:
                this.randomAccessFile.seek(j);
                break;
            case 1:
                this.randomAccessFile.seek(this.randomAccessFile.getFilePointer() + j);
                break;
            case 2:
                this.randomAccessFile.seek(this.randomAccessFile.length() + j);
                break;
            default:
                try {
                    throw new RuntimeException("Seek: unknown origin: " + i);
                } catch (IOException e) {
                    throw new SevenZipException("Error while seek operation", e);
                }
        }
        return this.randomAccessFile.getFilePointer();
    }
}
