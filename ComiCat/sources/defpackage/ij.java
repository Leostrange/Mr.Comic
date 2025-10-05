package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;

/* renamed from: ij  reason: default package */
/* compiled from: IOUtil */
public final class ij {
    public static final InputStream a = new InputStream() {
        public final int read() {
            return -1;
        }

        public final int read(byte[] bArr) {
            return -1;
        }

        public final int read(byte[] bArr, int i, int i2) {
            return -1;
        }
    };
    public static final OutputStream b = new OutputStream() {
        public final void write(int i) {
        }

        public final void write(byte[] bArr) {
        }

        public final void write(byte[] bArr, int i, int i2) {
        }
    };

    /* renamed from: ij$a */
    /* compiled from: IOUtil */
    public static final class a extends b {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    /* renamed from: ij$b */
    /* compiled from: IOUtil */
    public static abstract class b extends IOException {
        public b(IOException iOException) {
            super(iOException);
        }

        public /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }

        public String getMessage() {
            String message = super.getCause().getMessage();
            return message == null ? "" : message;
        }
    }

    /* renamed from: ij$c */
    /* compiled from: IOUtil */
    public static final class c extends b {
        public c(IOException iOException) {
            super(iOException);
        }
    }

    public static Reader a(InputStream inputStream) {
        return new InputStreamReader(inputStream, il.a.newDecoder());
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    private static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr) {
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    try {
                        outputStream.write(bArr, 0, read);
                    } catch (IOException e) {
                        throw new c(e);
                    }
                } else {
                    return;
                }
            } catch (IOException e2) {
                throw new a(e2);
            }
        }
    }

    public static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream, new byte[16384]);
        return byteArrayOutputStream.toByteArray();
    }

    public static void c(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (IOException e) {
        }
    }
}
