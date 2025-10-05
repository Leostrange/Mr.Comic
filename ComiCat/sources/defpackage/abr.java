package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: abr  reason: default package */
/* compiled from: TransactNamedPipeOutputStream */
public final class abr extends aat {
    private String b;
    private aau c;
    private byte[] d = new byte[1];
    private boolean e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public abr(aau aau) {
        super((aar) aau, (aau.s & -65281) | 32);
        boolean z = true;
        this.c = aau;
        this.e = (aau.s & 1536) != 1536 ? false : z;
        this.b = aau.j;
    }

    public final void close() {
        this.c.c();
    }

    public final void write(int i) {
        this.d[0] = (byte) i;
        write(this.d, 0, 1);
    }

    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public final void write(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if ((this.c.s & NotificationCompat.FLAG_LOCAL_ONLY) == 256) {
            this.c.a((zm) new abo(this.b), (zm) new abp());
            this.c.a((zm) new abi(this.b, bArr, i, i2), (zm) new abj(this.c));
        } else if ((this.c.s & NotificationCompat.FLAG_GROUP_SUMMARY) == 512) {
            a();
            abm abm = new abm(this.c.k, bArr, i, i2);
            if (this.e) {
                abm.O = 1024;
            }
            this.c.a((zm) abm, (zm) new abn(this.c));
        }
    }
}
