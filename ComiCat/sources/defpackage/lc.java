package defpackage;

import defpackage.no;
import java.io.BufferedInputStream;
import java.io.InputStream;

/* renamed from: lc  reason: default package */
/* compiled from: MediaHttpUploader */
public final class lc {
    public int a;
    public lw b;
    public boolean c;
    String d;
    public boolean e;
    private final lm f;
    private final ma g;
    private ls h;
    private long i;
    private boolean j;
    private String k;
    private lz l;
    private InputStream m;
    private long n;
    private int o;
    private Byte p;
    private long q;
    private int r;
    private byte[] s;

    /* renamed from: lc$a */
    /* compiled from: MediaHttpUploader */
    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = new int[]{a, b, c, d, e};
        }
    }

    private static mc a(lz lzVar) {
        new kt().b(lzVar);
        lzVar.o = false;
        return lzVar.a();
    }

    private mc b(lz lzVar) {
        if (!this.e && !(lzVar.f instanceof lp)) {
            lzVar.n = new lq();
        }
        return a(lzVar);
    }

    private boolean b() {
        return c() >= 0;
    }

    private long c() {
        if (!this.j) {
            this.i = this.f.a();
            this.j = true;
        }
        return this.i;
    }

    private mc c(lr lrVar) {
        this.a = a.b;
        lrVar.put("uploadType", "resumable");
        lz a2 = this.g.a(this.k, lrVar, this.h == null ? new lp() : this.h);
        this.b.d("X-Upload-Content-Type", (Object) this.f.a);
        if (b()) {
            this.b.d("X-Upload-Content-Length", (Object) Long.valueOf(c()));
        }
        a2.b.putAll(this.b);
        mc b2 = b(a2);
        try {
            this.a = a.c;
            return b2;
        } catch (Throwable th) {
            b2.d();
            throw th;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: lm} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: lm} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: mk} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v12, resolved type: lm} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.mc a(defpackage.lr r5) {
        /*
            r4 = this;
            int r0 = defpackage.lc.a.d
            r4.a = r0
            lm r0 = r4.f
            ls r1 = r4.h
            if (r1 == 0) goto L_0x0076
            mk r1 = new mk
            r1.<init>()
            r0 = 2
            ls[] r0 = new defpackage.ls[r0]
            r2 = 0
            ls r3 = r4.h
            r0[r2] = r3
            r2 = 1
            lm r3 = r4.f
            r0[r2] = r3
            java.util.List r0 = java.util.Arrays.asList(r0)
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r0.size()
            r2.<init>(r3)
            r1.b = r2
            java.util.Iterator r2 = r0.iterator()
        L_0x002f:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x004a
            java.lang.Object r0 = r2.next()
            ls r0 = (defpackage.ls) r0
            mk$a r3 = new mk$a
            r3.<init>(r0)
            java.util.ArrayList<mk$a> r0 = r1.b
            java.lang.Object r3 = defpackage.ni.a(r3)
            r0.add(r3)
            goto L_0x002f
        L_0x004a:
            java.lang.String r0 = "uploadType"
            java.lang.String r2 = "multipart"
            r5.put(r0, r2)
            r0 = r1
        L_0x0052:
            ma r1 = r4.g
            java.lang.String r2 = r4.k
            lz r0 = r1.a(r2, r5, r0)
            lw r1 = r0.b
            lw r2 = r4.b
            r1.putAll(r2)
            mc r1 = r4.b((defpackage.lz) r0)
            boolean r0 = r4.b()     // Catch:{ all -> 0x007e }
            if (r0 == 0) goto L_0x0071
            long r2 = r4.c()     // Catch:{ all -> 0x007e }
            r4.n = r2     // Catch:{ all -> 0x007e }
        L_0x0071:
            int r0 = defpackage.lc.a.e     // Catch:{ all -> 0x007e }
            r4.a = r0     // Catch:{ all -> 0x007e }
            return r1
        L_0x0076:
            java.lang.String r1 = "uploadType"
            java.lang.String r2 = "media"
            r5.put(r1, r2)
            goto L_0x0052
        L_0x007e:
            r0 = move-exception
            r1.d()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lc.a(lr):mc");
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        oh.a(this.l, (Object) "The current request should not be null");
        this.l.f = new lp();
        this.l.b.c("bytes */" + this.d);
    }

    /* JADX INFO: finally extract failed */
    public final mc b(lr lrVar) {
        int i2;
        int i3;
        ls loVar;
        mc c2 = c(lrVar);
        if (c2.a()) {
            try {
                lr lrVar2 = new lr(c2.e.c.a());
                c2.d();
                this.m = this.f.b();
                if (!this.m.markSupported() && b()) {
                    this.m = new BufferedInputStream(this.m);
                }
                lr lrVar3 = lrVar2;
                while (true) {
                    this.l = this.g.a("PUT", lrVar3, (ls) null);
                    int min = b() ? (int) Math.min((long) this.o, c() - this.n) : this.o;
                    if (b()) {
                        this.m.mark(min);
                        mh mhVar = new mh(this.f.c(), new no.a(this.m, (long) min));
                        mhVar.d = true;
                        mhVar.c = (long) min;
                        loVar = mhVar.a(false);
                        this.d = String.valueOf(c());
                    } else {
                        if (this.s == null) {
                            int i4 = this.p == null ? min + 1 : min;
                            this.s = new byte[(min + 1)];
                            if (this.p != null) {
                                this.s[0] = this.p.byteValue();
                                i3 = i4;
                                i2 = 0;
                            } else {
                                i3 = i4;
                                i2 = 0;
                            }
                        } else {
                            i2 = (int) (this.q - this.n);
                            System.arraycopy(this.s, this.r - i2, this.s, 0, i2);
                            if (this.p != null) {
                                this.s[i2] = this.p.byteValue();
                            }
                            i3 = min - i2;
                        }
                        int a2 = no.a(this.m, this.s, (min + 1) - i3, i3);
                        if (a2 < i3) {
                            min = Math.max(0, a2) + i2;
                            if (this.p != null) {
                                min++;
                                this.p = null;
                            }
                            if (this.d.equals("*")) {
                                this.d = String.valueOf(this.n + ((long) min));
                            }
                        } else {
                            this.p = Byte.valueOf(this.s[min]);
                        }
                        loVar = new lo(this.f.c(), this.s, min);
                        this.q = this.n + ((long) min);
                    }
                    this.r = min;
                    this.l.f = loVar;
                    if (min == 0) {
                        this.l.b.c("bytes */" + this.d);
                    } else {
                        this.l.b.c("bytes " + this.n + "-" + ((this.n + ((long) min)) - 1) + "/" + this.d);
                    }
                    new ld(this, this.l);
                    c2 = b() ? a(this.l) : b(this.l);
                    try {
                        if (!c2.a()) {
                            if (c2.c != 308) {
                                break;
                            }
                            String a3 = c2.e.c.a();
                            lr lrVar4 = a3 != null ? new lr(a3) : lrVar3;
                            String str = (String) lw.a(c2.e.c.range);
                            long parseLong = str == null ? 0 : Long.parseLong(str.substring(str.indexOf(45) + 1)) + 1;
                            long j2 = parseLong - this.n;
                            ni.b(j2 >= 0 && j2 <= ((long) this.r));
                            long j3 = ((long) this.r) - j2;
                            if (b()) {
                                if (j3 > 0) {
                                    this.m.reset();
                                    ni.b(j2 == this.m.skip(j2));
                                }
                            } else if (j3 == 0) {
                                this.s = null;
                            }
                            this.n = parseLong;
                            this.a = a.d;
                            c2.d();
                            lrVar3 = lrVar4;
                        } else {
                            this.n = c();
                            if (this.f.b) {
                                this.m.close();
                            }
                            this.a = a.e;
                        }
                    } catch (Throwable th) {
                        c2.d();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                c2.d();
                throw th2;
            }
        }
        return c2;
    }
}
