package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;

/* renamed from: xs  reason: default package */
/* compiled from: DcerpcPipeHandle */
public final class xs extends xq {
    aau g;
    aas h = null;
    aat i = null;
    boolean j = true;

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v4, resolved type: boolean} */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x01df, code lost:
        r0 = r1;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x01e7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public xs(java.lang.String r14, defpackage.zl r15) {
        /*
            r13 = this;
            r13.<init>()
            r0 = 0
            r13.h = r0
            r0 = 0
            r13.i = r0
            r0 = 1
            r13.j = r0
            char[] r7 = r14.toCharArray()
            r3 = 0
            r2 = 0
            r1 = 0
            r4 = 0
            r5 = r4
            r6 = r4
        L_0x0016:
            char r8 = r7[r4]
            switch(r6) {
                case 0: goto L_0x0043;
                case 1: goto L_0x0056;
                case 2: goto L_0x01f0;
                case 3: goto L_0x001b;
                case 4: goto L_0x001b;
                case 5: goto L_0x0086;
                default: goto L_0x001b;
            }
        L_0x001b:
            int r0 = r7.length
            r4 = r5
            r5 = r6
            r11 = r3
            r3 = r0
            r0 = r1
            r1 = r2
            r2 = r11
        L_0x0023:
            int r3 = r3 + 1
            int r6 = r7.length
            if (r3 < r6) goto L_0x01f3
            if (r0 == 0) goto L_0x002e
            java.lang.String r1 = r0.d
            if (r1 != 0) goto L_0x0140
        L_0x002e:
            xp r0 = new xp
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Invalid binding URL: "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r14)
            java.lang.String r1 = r1.toString()
            r0.<init>((java.lang.String) r1)
            throw r0
        L_0x0043:
            r0 = 58
            if (r8 != r0) goto L_0x01df
            java.lang.String r0 = r14.substring(r5, r4)
            int r3 = r4 + 1
            r5 = 1
            r11 = r1
            r1 = r2
            r2 = r0
            r0 = r11
            r12 = r4
            r4 = r3
            r3 = r12
            goto L_0x0023
        L_0x0056:
            r0 = 92
            if (r8 != r0) goto L_0x0064
            int r0 = r4 + 1
            r5 = r6
            r11 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r1
            r1 = r11
            goto L_0x0023
        L_0x0064:
            r0 = 2
        L_0x0065:
            r6 = 91
            if (r8 != r6) goto L_0x01e7
            java.lang.String r0 = r14.substring(r5, r4)
            java.lang.String r0 = r0.trim()
            r0.length()
            xm r0 = new xm
            java.lang.String r1 = r14.substring(r5, r4)
            r0.<init>(r3, r1)
            int r1 = r4 + 1
            r5 = 5
            r11 = r2
            r2 = r3
            r3 = r4
            r4 = r1
            r1 = r11
            goto L_0x0023
        L_0x0086:
            r0 = 61
            if (r8 != r0) goto L_0x009d
            java.lang.String r0 = r14.substring(r5, r4)
            java.lang.String r0 = r0.trim()
            int r2 = r4 + 1
            r5 = r6
            r11 = r0
            r0 = r1
            r1 = r11
            r12 = r4
            r4 = r2
            r2 = r3
            r3 = r12
            goto L_0x0023
        L_0x009d:
            r0 = 44
            if (r8 == r0) goto L_0x00a5
            r0 = 93
            if (r8 != r0) goto L_0x01df
        L_0x00a5:
            java.lang.String r0 = r14.substring(r5, r4)
            java.lang.String r0 = r0.trim()
            if (r2 != 0) goto L_0x00b1
            java.lang.String r2 = "endpoint"
        L_0x00b1:
            java.lang.String r8 = "endpoint"
            boolean r8 = r2.equals(r8)
            if (r8 == 0) goto L_0x012f
            java.lang.String r0 = r0.toString()
            r1.d = r0
            java.lang.String r0 = r1.d
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r2 = "\\pipe\\"
            boolean r2 = r0.startsWith(r2)
            if (r2 == 0) goto L_0x0118
            java.util.HashMap r2 = defpackage.xm.a
            r8 = 6
            java.lang.String r0 = r0.substring(r8)
            java.lang.Object r0 = r2.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x0118
            r2 = 58
            int r2 = r0.indexOf(r2)
            r8 = 46
            int r9 = r2 + 1
            int r8 = r0.indexOf(r8, r9)
            xu r9 = new xu
            r10 = 0
            java.lang.String r10 = r0.substring(r10, r2)
            r9.<init>(r10)
            r1.f = r9
            int r2 = r2 + 1
            java.lang.String r2 = r0.substring(r2, r8)
            int r2 = java.lang.Integer.parseInt(r2)
            r1.g = r2
            int r2 = r8 + 1
            java.lang.String r0 = r0.substring(r2)
            int r0 = java.lang.Integer.parseInt(r0)
            r1.h = r0
        L_0x010e:
            r0 = 0
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x0023
        L_0x0118:
            xp r0 = new xp
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Bad endpoint: "
            r2.<init>(r3)
            java.lang.String r1 = r1.d
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r1 = r1.toString()
            r0.<init>((java.lang.String) r1)
            throw r0
        L_0x012f:
            java.util.HashMap r8 = r1.e
            if (r8 != 0) goto L_0x013a
            java.util.HashMap r8 = new java.util.HashMap
            r8.<init>()
            r1.e = r8
        L_0x013a:
            java.util.HashMap r8 = r1.e
            r8.put(r2, r0)
            goto L_0x010e
        L_0x0140:
            r13.a = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "smb://"
            r0.<init>(r1)
            xm r1 = r13.a
            java.lang.String r1 = r1.c
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = "/IPC$/"
            java.lang.StringBuilder r0 = r0.append(r1)
            xm r1 = r13.a
            java.lang.String r1 = r1.d
            r2 = 6
            java.lang.String r1 = r1.substring(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r3 = r0.toString()
            java.lang.String r1 = ""
            xm r0 = r13.a
            java.lang.String r2 = "server"
            java.lang.Object r0 = r0.a(r2)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x01dd
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = "&server="
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r0)
            java.lang.String r1 = r1.toString()
            r2 = r1
        L_0x018e:
            xm r1 = r13.a
            java.lang.String r4 = "address"
            java.lang.Object r1 = r1.a(r4)
            java.lang.String r1 = (java.lang.String) r1
            if (r0 == 0) goto L_0x01b1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = "&address="
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r2 = r0.toString()
        L_0x01b1:
            int r0 = r2.length()
            if (r0 <= 0) goto L_0x01db
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r1 = "?"
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = 1
            java.lang.String r1 = r2.substring(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        L_0x01d3:
            aau r1 = new aau
            r1.<init>(r0, r15)
            r13.g = r1
            return
        L_0x01db:
            r0 = r3
            goto L_0x01d3
        L_0x01dd:
            r2 = r1
            goto L_0x018e
        L_0x01df:
            r0 = r1
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            goto L_0x0023
        L_0x01e7:
            r11 = r1
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r0
            r0 = r11
            goto L_0x0023
        L_0x01f0:
            r0 = r6
            goto L_0x0065
        L_0x01f3:
            r6 = r5
            r5 = r4
            r4 = r3
            r3 = r2
            r2 = r1
            r1 = r0
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xs.<init>(java.lang.String, zl):void");
    }

    public final void a() {
        this.d = 0;
        if (this.i != null) {
            this.i.close();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(byte[] bArr, int i2, int i3, boolean z) {
        if (this.i == null || this.i.a.b()) {
            if (this.h == null) {
                aau aau = this.g;
                if (aau.q == null) {
                    if ((aau.s & NotificationCompat.FLAG_LOCAL_ONLY) == 256 || (aau.s & NotificationCompat.FLAG_GROUP_SUMMARY) == 512) {
                        aau.q = new abq(aau);
                    } else {
                        aau.q = new aas(aau, (aau.s & -65281) | 32);
                    }
                }
                this.h = (aas) aau.q;
            }
            if (this.i == null) {
                aau aau2 = this.g;
                if (aau2.r == null) {
                    if ((aau2.s & NotificationCompat.FLAG_LOCAL_ONLY) == 256 || (aau2.s & NotificationCompat.FLAG_GROUP_SUMMARY) == 512) {
                        aau2.r = new abr(aau2);
                    } else {
                        aau2.r = new aat((aar) aau2, (aau2.s & -65281) | 32);
                    }
                }
                this.i = (aat) aau2.r;
            }
            if (z) {
                this.i.a(bArr, i2, i3, 1);
            } else {
                this.i.write(bArr, i2, i3);
            }
        } else {
            throw new IOException("DCERPC pipe is no longer open");
        }
    }

    /* access modifiers changed from: protected */
    public final void a(byte[] bArr, boolean z) {
        boolean z2 = true;
        if (bArr.length < this.c) {
            throw new IllegalArgumentException("buffer too small");
        }
        int a = (!this.j || z) ? this.h.a(bArr, 0, bArr.length) : this.h.read(bArr, 0, 1024);
        if (bArr[0] == 5 || bArr[1] == 0) {
            if ((bArr[3] & 255 & 2) != 2) {
                z2 = false;
            }
            this.j = z2;
            short a2 = abu.a(bArr, 8);
            if (a2 > this.c) {
                throw new IOException("Unexpected fragment length: " + a2);
            }
            while (a < a2) {
                a += this.h.a(bArr, a, a2 - a);
            }
            return;
        }
        throw new IOException("Unexpected DCERPC PDU header");
    }
}
