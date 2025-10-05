package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialInStream;
import net.sf.sevenzipjbinding.SevenZipException;

public class SequentialInStreamImpl implements ISequentialInStream {
    private InputStream inputStream;

    public SequentialInStreamImpl(InputStream inputStream2) {
        this.inputStream = inputStream2;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public int read(byte[] bArr) {
        if (bArr.length == 0) {
            return 0;
        }
        try {
            int read = this.inputStream.read(bArr);
            if (read != -1) {
                return read;
            }
            return 0;
        } catch (IOException e) {
            throw new SevenZipException("Error reading input stream", e);
        }
    }
}
