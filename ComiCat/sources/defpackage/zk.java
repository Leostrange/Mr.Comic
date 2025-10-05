package defpackage;

import java.io.PrintStream;

/* renamed from: zk  reason: default package */
/* compiled from: NtlmContext */
public final class zk {
    zl a;
    int b;
    String c;
    boolean d = false;
    byte[] e = null;
    byte[] f = null;
    String g = null;
    int h = 1;
    abx i;

    public zk(zl zlVar, boolean z) {
        this.a = zlVar;
        this.b = this.b | 4 | 524288 | 536870912;
        if (z) {
            this.b |= 1073774608;
        }
        this.c = yr.b();
        this.i = abx.a();
    }

    public final byte[] a(byte[] bArr) {
        switch (this.h) {
            case 1:
                yr yrVar = new yr(this.b, this.a.h, this.c);
                byte[] a2 = yrVar.a();
                if (abx.a >= 4) {
                    this.i.println(yrVar);
                    if (abx.a >= 6) {
                        abw.a((PrintStream) this.i, a2, 0, a2.length);
                    }
                }
                this.h++;
                return a2;
            case 2:
                try {
                    ys ysVar = new ys(bArr);
                    if (abx.a >= 4) {
                        this.i.println(ysVar);
                        if (abx.a >= 6) {
                            abw.a((PrintStream) this.i, bArr, 0, bArr.length);
                        }
                    }
                    this.e = ysVar.d;
                    this.b &= ysVar.c;
                    yt ytVar = new yt(ysVar, this.a.j, this.a.h, this.a.i, this.c, this.b);
                    byte[] a3 = ytVar.a();
                    if (abx.a >= 4) {
                        this.i.println(ytVar);
                        if (abx.a >= 6) {
                            abw.a((PrintStream) this.i, a3, 0, a3.length);
                        }
                    }
                    if ((this.b & 16) != 0) {
                        this.f = ytVar.d;
                    }
                    this.d = true;
                    this.h++;
                    return a3;
                } catch (Exception e2) {
                    throw new aaq(e2.getMessage(), (Throwable) e2);
                }
            default:
                throw new aaq("Invalid state");
        }
    }

    public final String toString() {
        String str = "NtlmContext[auth=" + this.a + ",ntlmsspFlags=0x" + abw.a(this.b, 8) + ",workstation=" + this.c + ",isEstablished=" + this.d + ",state=" + this.h + ",serverChallenge=";
        String str2 = (this.e == null ? str + "null" : str + abw.a(this.e, this.e.length * 2)) + ",signingKey=";
        return (this.f == null ? str2 + "null" : str2 + abw.a(this.f, this.f.length * 2)) + "]";
    }
}
