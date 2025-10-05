package defpackage;

import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import org.apache.http.protocol.HTTP;

/* renamed from: hx  reason: default package */
/* compiled from: FixedSecureRandom */
public final class hx extends SecureRandom {
    private static final byte[] a = e();

    /* renamed from: hx$a */
    /* compiled from: FixedSecureRandom */
    static class a extends Provider {
        public a() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", b.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    /* renamed from: hx$b */
    /* compiled from: FixedSecureRandom */
    public static class b extends SecureRandomSpi {
        private static final File a = new File("/dev/urandom");
        private static final Object b = new Object();
        private static DataInputStream c;
        private static OutputStream d;
        private boolean e;

        private static DataInputStream a() {
            DataInputStream dataInputStream;
            synchronized (b) {
                if (c == null) {
                    try {
                        c = new DataInputStream(new FileInputStream(a));
                    } catch (IOException e2) {
                        throw new SecurityException("Failed to open " + a + " for reading", e2);
                    }
                }
                dataInputStream = c;
            }
            return dataInputStream;
        }

        private static OutputStream b() {
            OutputStream outputStream;
            synchronized (b) {
                if (d == null) {
                    d = new FileOutputStream(a);
                }
                outputStream = d;
            }
            return outputStream;
        }

        /* access modifiers changed from: protected */
        public byte[] engineGenerateSeed(int i) {
            byte[] bArr = new byte[i];
            engineNextBytes(bArr);
            return bArr;
        }

        /* access modifiers changed from: protected */
        public void engineNextBytes(byte[] bArr) {
            DataInputStream a2;
            if (!this.e) {
                engineSetSeed(hx.c());
            }
            try {
                synchronized (b) {
                    a2 = a();
                }
                synchronized (a2) {
                    a2.readFully(bArr);
                }
            } catch (IOException e2) {
                throw new SecurityException("Failed to read from " + a, e2);
            }
        }

        /* access modifiers changed from: protected */
        public void engineSetSeed(byte[] bArr) {
            OutputStream b2;
            try {
                synchronized (b) {
                    b2 = b();
                }
                b2.write(bArr);
                b2.flush();
                this.e = true;
            } catch (IOException e2) {
                try {
                    Log.w(b.class.getSimpleName(), "Failed to mix seed into " + a);
                } finally {
                    this.e = true;
                }
            }
        }
    }

    private hx() {
        super(new b(), new a());
    }

    public static SecureRandom a() {
        return Build.VERSION.SDK_INT > 18 ? new SecureRandom() : new hx();
    }

    /* access modifiers changed from: private */
    public static byte[] c() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(a);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new SecurityException("Failed to generate seed", e);
        }
    }

    private static String d() {
        try {
            return (String) Build.class.getField("SERIAL").get((Object) null);
        } catch (Exception e) {
            return null;
        }
    }

    private static byte[] e() {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String d = d();
        if (d != null) {
            sb.append(d);
        }
        try {
            return sb.toString().getBytes(HTTP.UTF_8);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }
}
