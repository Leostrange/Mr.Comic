package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.PrintStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: zn  reason: default package */
/* compiled from: SigningDigest */
public final class zn implements aap {
    static abx a = abx.a();
    private MessageDigest b;
    private byte[] c;
    private boolean d = false;
    private int e;
    private int f;

    public zn(byte[] bArr, boolean z) {
        try {
            this.b = MessageDigest.getInstance("MD5");
            this.c = bArr;
            this.d = z;
            this.e = 0;
            this.f = 0;
            if (abx.a >= 5) {
                a.println("macSigningKey:");
                abw.a((PrintStream) a, bArr, 0, bArr.length);
            }
        } catch (NoSuchAlgorithmException e2) {
            if (abx.a > 0) {
                e2.printStackTrace(a);
            }
            throw new aaq("MD5", (Throwable) e2);
        }
    }

    private void a(byte[] bArr, int i, int i2) {
        if (abx.a >= 5) {
            a.println("update: " + this.e + " " + i + ":" + i2);
            abw.a((PrintStream) a, bArr, i, Math.min(i2, NotificationCompat.FLAG_LOCAL_ONLY));
            a.flush();
        }
        if (i2 != 0) {
            this.b.update(bArr, i, i2);
            this.e++;
        }
    }

    private byte[] a() {
        byte[] digest = this.b.digest();
        if (abx.a >= 5) {
            a.println("digest: ");
            abw.a((PrintStream) a, digest, 0, digest.length);
            a.flush();
        }
        this.e = 0;
        return digest;
    }

    /* access modifiers changed from: package-private */
    public final void a(byte[] bArr, int i, int i2, zm zmVar, zm zmVar2) {
        zmVar.x = this.f;
        if (zmVar2 != null) {
            zmVar2.x = this.f + 1;
            zmVar2.y = false;
        }
        try {
            a(this.c, 0, this.c.length);
            int i3 = i + 14;
            for (int i4 = 0; i4 < 8; i4++) {
                bArr[i3 + i4] = 0;
            }
            zm.b((long) this.f, bArr, i3);
            a(bArr, i, i2);
            System.arraycopy(a(), 0, bArr, i3, 8);
            if (this.d) {
                this.d = false;
                System.arraycopy("BSRSPYL ".getBytes(), 0, bArr, i3, 8);
            }
        } catch (Exception e2) {
            if (abx.a > 0) {
                e2.printStackTrace(a);
            }
        } finally {
            this.f += 2;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(byte[] bArr, zm zmVar) {
        a(this.c, 0, this.c.length);
        a(bArr, 4, 14);
        byte[] bArr2 = new byte[8];
        zm.b((long) zmVar.x, bArr2, 0);
        a(bArr2, 0, 8);
        if (zmVar.g == 46) {
            aad aad = (aad) zmVar;
            a(bArr, 26, ((zmVar.j - aad.D) - 14) - 8);
            a(aad.b, aad.c, aad.D);
        } else {
            a(bArr, 26, (zmVar.j - 14) - 8);
        }
        byte[] a2 = a();
        for (int i = 0; i < 8; i++) {
            if (a2[i] != bArr[i + 18]) {
                if (abx.a >= 2) {
                    a.println("signature verification failure");
                    abw.a((PrintStream) a, a2, 0, 8);
                    abw.a((PrintStream) a, bArr, 18, 8);
                }
                zmVar.y = true;
                return true;
            }
        }
        zmVar.y = false;
        return false;
    }

    public final String toString() {
        return "LM_COMPATIBILITY=" + ai + " MacSigningKey=" + abw.a(this.c, this.c.length);
    }
}
