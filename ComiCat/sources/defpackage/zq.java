package defpackage;

import java.util.Date;

/* renamed from: zq  reason: default package */
/* compiled from: SmbComClose */
final class zq extends zm {
    private int a;
    private long b = 0;

    zq(int i) {
        this.a = i;
        this.g = 4;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        a((long) this.a, bArr, i);
        int i2 = i + 2;
        long j = this.b;
        if (j == 0 || j == -1) {
            zm.b(-1, bArr, i2);
            return 6;
        }
        synchronized (zm.ak) {
            if (zm.ak.inDaylightTime(new Date())) {
                if (!zm.ak.inDaylightTime(new Date(j))) {
                    j -= 3600000;
                }
            } else if (zm.ak.inDaylightTime(new Date(j))) {
                j += 3600000;
            }
        }
        zm.b((long) ((int) (j / 1000)), bArr, i2);
        return 6;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComClose[" + super.toString() + ",fid=" + this.a + ",lastWriteTime=" + this.b + "]");
    }
}
