package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: pn  reason: default package */
/* compiled from: ArrayListMultimap */
public final class pn<K, V> extends pj<K, V> {
    transient int a = 3;

    private pn() {
        super(new HashMap());
    }

    public static <K, V> pn<K, V> h() {
        return new pn<>();
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public final List<V> c() {
        return new ArrayList(this.a);
    }

    public final /* bridge */ /* synthetic */ List a(Object obj) {
        return super.b(obj);
    }

    public final /* bridge */ /* synthetic */ boolean a(Object obj, Object obj2) {
        return super.a(obj, obj2);
    }

    public final /* bridge */ /* synthetic */ Map b() {
        return super.b();
    }

    public final /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final /* bridge */ /* synthetic */ Set g() {
        return super.g();
    }

    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public final /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
