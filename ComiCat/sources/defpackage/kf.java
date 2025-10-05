package defpackage;

import defpackage.kl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* renamed from: kf  reason: default package */
/* compiled from: AuthorizationCodeFlow */
public class kf {
    protected final mf a;
    protected final mv b;
    protected final String c;
    protected final lv d;
    public final String e;
    public final String f;
    protected final mb g;
    public final Collection<String> h;
    private final kl.a i;
    @Deprecated
    private final km j;
    private final ou<Object> k;
    private final nr l;
    private final b m;
    private final Collection<Object> n;

    /* renamed from: kf$a */
    /* compiled from: AuthorizationCodeFlow */
    public static class a {
        kl.a a;
        mf b;
        mv c;
        lr d;
        lv e;
        String f;
        String g;
        @Deprecated
        km h;
        ou<Object> i;
        mb j;
        Collection<String> k = new ArrayList();
        nr l = nr.a;
        b m;
        Collection<Object> n = new ArrayList();

        public a(kl.a aVar, mf mfVar, mv mvVar, lr lrVar, lv lvVar, String str, String str2) {
            a(aVar);
            a(mfVar);
            a(mvVar);
            a(lrVar);
            a(lvVar);
            a(str);
            b(str2);
        }

        public a a(String str) {
            this.f = (String) ni.a(str);
            return this;
        }

        public a a(Collection<String> collection) {
            this.k = (Collection) ni.a(collection);
            return this;
        }

        public a a(kl.a aVar) {
            this.a = (kl.a) ni.a(aVar);
            return this;
        }

        public a a(lr lrVar) {
            this.d = (lr) ni.a(lrVar);
            return this;
        }

        public a a(lv lvVar) {
            this.e = lvVar;
            return this;
        }

        public a a(mf mfVar) {
            this.b = (mf) ni.a(mfVar);
            return this;
        }

        public a a(mv mvVar) {
            this.c = (mv) ni.a(mvVar);
            return this;
        }

        public a b(String str) {
            this.g = (String) ni.a(str);
            return this;
        }
    }

    /* renamed from: kf$b */
    /* compiled from: AuthorizationCodeFlow */
    public interface b {
    }

    protected kf(a aVar) {
        this.i = (kl.a) ni.a(aVar.a);
        this.a = (mf) ni.a(aVar.b);
        this.b = (mv) ni.a(aVar.c);
        this.c = ((lr) ni.a(aVar.d)).e();
        this.d = aVar.e;
        this.e = (String) ni.a(aVar.f);
        this.f = (String) ni.a(aVar.g);
        this.g = aVar.j;
        this.j = aVar.h;
        this.k = aVar.i;
        this.h = Collections.unmodifiableCollection(aVar.k);
        this.l = (nr) ni.a(aVar.l);
        this.m = aVar.m;
        this.n = Collections.unmodifiableCollection(aVar.n);
    }
}
