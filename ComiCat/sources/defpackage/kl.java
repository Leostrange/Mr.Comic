package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;
import java.util.logging.Logger;

/* renamed from: kl  reason: default package */
/* compiled from: Credential */
public class kl implements lv, mb, mg {
    static final Logger a = Logger.getLogger(kl.class.getName());
    private final Lock b;
    private final a c;
    private final nr d;
    private String e;
    private Long f;
    private String g;
    private final mf h;
    private final lv i;
    private final mv j;
    private final String k;
    private final Collection<Object> l;
    private final mb m;

    /* renamed from: kl$a */
    /* compiled from: Credential */
    public interface a {
        String a(lz lzVar);

        void a(lz lzVar, String str);
    }

    /* JADX INFO: finally extract failed */
    private Long a() {
        this.b.lock();
        try {
            if (this.f == null) {
                this.b.unlock();
                return null;
            }
            Long valueOf = Long.valueOf((this.f.longValue() - this.d.a()) / 1000);
            this.b.unlock();
            return valueOf;
        } catch (Throwable th) {
            this.b.unlock();
            throw th;
        }
    }

    private kl a(Long l2) {
        this.b.lock();
        try {
            this.f = l2;
            return this;
        } finally {
            this.b.unlock();
        }
    }

    private kl a(String str) {
        this.b.lock();
        try {
            this.e = str;
            return this;
        } finally {
            this.b.unlock();
        }
    }

    private kl b(Long l2) {
        return a(l2 == null ? null : Long.valueOf(this.d.a() + (l2.longValue() * 1000)));
    }

    private kl b(String str) {
        this.b.lock();
        if (str != null) {
            try {
                oh.a((this.j == null || this.h == null || this.i == null || this.k == null) ? false : true, (Object) "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
            } catch (Throwable th) {
                this.b.unlock();
                throw th;
            }
        }
        this.g = str;
        this.b.unlock();
        return this;
    }

    private boolean b() {
        boolean z = true;
        kq kqVar = null;
        this.b.lock();
        try {
            if (this.g != null) {
                kqVar = new kn(this.h, this.j, new lr(this.k), this.g).b(this.i).b(this.m).b();
            }
            if (kqVar != null) {
                a(kqVar.accessToken);
                if (kqVar.refreshToken != null) {
                    b(kqVar.refreshToken);
                }
                b(kqVar.expiresInSeconds);
                Iterator<Object> it = this.l.iterator();
                while (it.hasNext()) {
                    it.next();
                }
                this.b.unlock();
                return true;
            }
        } catch (kr e2) {
            if (400 > e2.b || e2.b >= 500) {
                z = false;
            }
            if (e2.a != null && z) {
                a((String) null);
                b((Long) null);
            }
            Iterator<Object> it2 = this.l.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            if (z) {
                throw e2;
            }
        } catch (Throwable th) {
            this.b.unlock();
            throw th;
        }
        this.b.unlock();
        return false;
    }

    public final void a(lz lzVar) {
        lzVar.a = this;
        lzVar.j = this;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(defpackage.lz r6, defpackage.mc r7, boolean r8) {
        /*
            r5 = this;
            r1 = 1
            r2 = 0
            lz r0 = r7.e
            lw r0 = r0.c
            java.util.List<java.lang.String> r0 = r0.authenticate
            if (r0 == 0) goto L_0x006e
            java.util.Iterator r3 = r0.iterator()
        L_0x000e:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L_0x006e
            java.lang.Object r0 = r3.next()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r4 = "Bearer "
            boolean r4 = r0.startsWith(r4)
            if (r4 == 0) goto L_0x000e
            java.util.regex.Pattern r3 = defpackage.kj.a
            java.util.regex.Matcher r0 = r3.matcher(r0)
            boolean r0 = r0.find()
            r3 = r1
        L_0x002d:
            if (r3 != 0) goto L_0x0036
            int r0 = r7.c
            r3 = 401(0x191, float:5.62E-43)
            if (r0 != r3) goto L_0x0057
            r0 = r1
        L_0x0036:
            if (r0 == 0) goto L_0x006c
            java.util.concurrent.locks.Lock r0 = r5.b     // Catch:{ IOException -> 0x0062 }
            r0.lock()     // Catch:{ IOException -> 0x0062 }
            java.lang.String r0 = r5.e     // Catch:{ all -> 0x005b }
            kl$a r3 = r5.c     // Catch:{ all -> 0x005b }
            java.lang.String r3 = r3.a(r6)     // Catch:{ all -> 0x005b }
            boolean r0 = defpackage.og.a(r0, r3)     // Catch:{ all -> 0x005b }
            if (r0 == 0) goto L_0x0051
            boolean r0 = r5.b()     // Catch:{ all -> 0x005b }
            if (r0 == 0) goto L_0x0059
        L_0x0051:
            java.util.concurrent.locks.Lock r0 = r5.b     // Catch:{ IOException -> 0x0062 }
            r0.unlock()     // Catch:{ IOException -> 0x0062 }
        L_0x0056:
            return r1
        L_0x0057:
            r0 = r2
            goto L_0x0036
        L_0x0059:
            r1 = r2
            goto L_0x0051
        L_0x005b:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r5.b     // Catch:{ IOException -> 0x0062 }
            r1.unlock()     // Catch:{ IOException -> 0x0062 }
            throw r0     // Catch:{ IOException -> 0x0062 }
        L_0x0062:
            r0 = move-exception
            java.util.logging.Logger r1 = a
            java.util.logging.Level r3 = java.util.logging.Level.SEVERE
            java.lang.String r4 = "unable to refresh token"
            r1.log(r3, r4, r0)
        L_0x006c:
            r1 = r2
            goto L_0x0056
        L_0x006e:
            r3 = r2
            r0 = r2
            goto L_0x002d
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kl.a(lz, mc, boolean):boolean");
    }

    public final void b(lz lzVar) {
        this.b.lock();
        try {
            Long a2 = a();
            if (this.e == null || (a2 != null && a2.longValue() <= 60)) {
                b();
                if (this.e == null) {
                    return;
                }
            }
            this.c.a(lzVar, this.e);
            this.b.unlock();
        } finally {
            this.b.unlock();
        }
    }
}
