package defpackage;

import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.net.UnknownHostException;

/* renamed from: yr  reason: default package */
/* compiled from: Type1Message */
public final class yr extends yq {
    private static final int d;
    private static final String e = xj.b("jcifs.smb.client.domain", (String) null);
    private static final String f;
    private String g;
    private String h;

    static {
        String str;
        int i = 1;
        if (!xj.a("jcifs.smb.client.useUnicode", true)) {
            i = 2;
        }
        d = i | NotificationCompat.FLAG_GROUP_SUMMARY;
        try {
            str = yk.a().f();
        } catch (UnknownHostException e2) {
            str = null;
        }
        f = str;
    }

    public yr() {
        this(d, e, f);
    }

    public yr(int i, String str, String str2) {
        this.c = d | i;
        this.g = str;
        this.h = str2 == null ? f : str2;
    }

    public static String b() {
        return f;
    }

    public final byte[] a() {
        int i;
        byte[] bArr;
        boolean z;
        int i2;
        int i3 = 16;
        boolean z2 = true;
        try {
            String str = this.g;
            String str2 = this.h;
            int i4 = this.c;
            byte[] bArr2 = new byte[0];
            if (str == null || str.length() == 0) {
                i = i4 & -4097;
                bArr = bArr2;
                z = false;
            } else {
                int i5 = i4 | FragmentTransaction.TRANSIT_ENTER_MASK;
                bArr = str.toUpperCase().getBytes(yq.b);
                i = i5;
                z = true;
            }
            byte[] bArr3 = new byte[0];
            if (str2 == null || str2.length() == 0) {
                boolean z3 = z;
                i2 = i & -8193;
                z2 = z3;
            } else {
                i2 = i | FragmentTransaction.TRANSIT_EXIT_MASK;
                bArr3 = str2.toUpperCase().getBytes(yq.b);
            }
            if (z2) {
                i3 = bArr.length + 32 + bArr3.length;
            }
            byte[] bArr4 = new byte[i3];
            System.arraycopy(a, 0, bArr4, 0, 8);
            a(bArr4, 8, 1);
            a(bArr4, 12, i2);
            if (z2) {
                a(bArr4, 16, 32, bArr);
                a(bArr4, 24, bArr.length + 32, bArr3);
            }
            return bArr4;
        } catch (IOException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }

    public final String toString() {
        String str = this.g;
        String str2 = this.h;
        StringBuilder sb = new StringBuilder("Type1Message[suppliedDomain=");
        if (str == null) {
            str = "null";
        }
        return sb.append(str).append(",suppliedWorkstation=").append(str2 == null ? "null" : str2).append(",flags=0x").append(abw.a(this.c, 8)).append("]").toString();
    }
}
