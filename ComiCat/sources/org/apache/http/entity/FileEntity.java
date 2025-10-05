package org.apache.http.entity;

import android.support.v4.app.FragmentTransaction;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.util.Args;

public class FileEntity extends AbstractHttpEntity implements Cloneable {
    protected final File file;

    public FileEntity(File file2) {
        this.file = (File) Args.notNull(file2, "File");
    }

    @Deprecated
    public FileEntity(File file2, String str) {
        this.file = (File) Args.notNull(file2, "File");
        setContentType(str);
    }

    public FileEntity(File file2, ContentType contentType) {
        this.file = (File) Args.notNull(file2, "File");
        if (contentType != null) {
            setContentType(contentType.toString());
        }
    }

    public Object clone() {
        return super.clone();
    }

    public InputStream getContent() {
        return new FileInputStream(this.file);
    }

    public long getContentLength() {
        return this.file.length();
    }

    public boolean isRepeatable() {
        return true;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        Args.notNull(outputStream, "Output stream");
        FileInputStream fileInputStream = new FileInputStream(this.file);
        try {
            byte[] bArr = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.flush();
                    return;
                }
            }
        } finally {
            fileInputStream.close();
        }
    }
}
