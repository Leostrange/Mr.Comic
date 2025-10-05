package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: lr  reason: default package */
/* compiled from: GenericUrl */
public class lr extends nw {
    private static final oq c = new or("=&-_.!~*'()@:$,;/?:", false);
    List<String> a;
    public String b;
    private String d;
    private String g;
    private String h;
    private int i;

    public lr() {
        this.i = -1;
    }

    public lr(String str) {
        this(a(str));
    }

    private lr(String str, String str2, int i2, String str3, String str4, String str5, String str6) {
        String str7 = null;
        this.i = -1;
        this.d = str.toLowerCase();
        this.g = str2;
        this.i = i2;
        this.a = g(str3);
        this.b = str4 != null ? op.b(str4) : null;
        if (str5 != null) {
            mn.a(str5, (Object) this);
        }
        this.h = str6 != null ? op.b(str6) : str7;
    }

    public lr(URL url) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo());
    }

    private static URL a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private void a(StringBuilder sb) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str = this.a.get(i2);
            if (i2 != 0) {
                sb.append('/');
            }
            if (str.length() != 0) {
                sb.append(op.c(str));
            }
        }
    }

    static void a(Set<Map.Entry<String, Object>> set, StringBuilder sb) {
        boolean z;
        boolean z2 = true;
        Iterator<Map.Entry<String, Object>> it = set.iterator();
        while (true) {
            boolean z3 = z2;
            if (it.hasNext()) {
                Map.Entry next = it.next();
                Object value = next.getValue();
                if (value != null) {
                    String f = op.f((String) next.getKey());
                    if (value instanceof Collection) {
                        z2 = z3;
                        for (Object a2 : (Collection) value) {
                            z2 = a(z2, sb, f, a2);
                        }
                    } else {
                        z = a(z3, sb, f, value);
                    }
                } else {
                    z = z3;
                }
            } else {
                return;
            }
        }
    }

    private static boolean a(boolean z, StringBuilder sb, String str, Object obj) {
        if (z) {
            z = false;
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(str);
        String f = op.f(obj.toString());
        if (f.length() != 0) {
            sb.append('=').append(f);
        }
        return z;
    }

    public static List<String> g(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        int i2 = 0;
        while (z) {
            int indexOf = str.indexOf(47, i2);
            z = indexOf != -1;
            arrayList.add(op.b(z ? str.substring(i2, indexOf) : str.substring(i2)));
            i2 = indexOf + 1;
        }
        return arrayList;
    }

    /* renamed from: c */
    public lr d() {
        lr lrVar = (lr) super.clone();
        if (this.a != null) {
            lrVar.a = new ArrayList(this.a);
        }
        return lrVar;
    }

    /* renamed from: c */
    public lr d(String str, Object obj) {
        return (lr) super.d(str, obj);
    }

    public final String e() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((String) ni.a(this.d));
        sb2.append("://");
        if (this.h != null) {
            sb2.append(op.e(this.h)).append('@');
        }
        sb2.append((String) ni.a(this.g));
        int i2 = this.i;
        if (i2 != -1) {
            sb2.append(':').append(i2);
        }
        StringBuilder append = sb.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        if (this.a != null) {
            a(sb3);
        }
        a(entrySet(), sb3);
        String str = this.b;
        if (str != null) {
            sb3.append('#').append(c.a(str));
        }
        return append.append(sb3.toString()).toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof lr)) {
            return false;
        }
        return e().equals(((lr) obj).toString());
    }

    public final URL f(String str) {
        try {
            return new URL(a(e()), str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public int hashCode() {
        return e().hashCode();
    }

    public String toString() {
        return e();
    }
}
