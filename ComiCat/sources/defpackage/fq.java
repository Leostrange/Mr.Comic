package defpackage;

import java.util.HashMap;
import java.util.Map;

/* renamed from: fq  reason: default package */
/* compiled from: CallbackInfo */
public class fq {
    private static final String d = fq.class.getName();
    private static final Object e = new Object();
    private static final Map<String, fq> f = new HashMap();
    public final String[] a;
    public final String b;
    public final fw c;

    static fq a(String str) {
        fq fqVar;
        synchronized (e) {
            fqVar = f.get(str);
            if (fqVar != null) {
                f.remove(fqVar.b);
            }
        }
        return fqVar;
    }
}
