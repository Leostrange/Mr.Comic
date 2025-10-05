package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

/* renamed from: hy  reason: default package */
/* compiled from: HttpRequestor */
public abstract class hy {
    public static final long a = TimeUnit.SECONDS.toMillis(20);
    public static final long b = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: hy$a */
    /* compiled from: HttpRequestor */
    public static final class a {
        final String a;
        final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    /* renamed from: hy$b */
    /* compiled from: HttpRequestor */
    public static final class b {
        public final int a;
        public final InputStream b;
        public final Map<String, List<String>> c;

        public b(int i, InputStream inputStream, Map<String, ? extends List<String>> map) {
            this.a = i;
            this.b = inputStream;
            this.c = a(map);
        }

        private static final Map<String, List<String>> a(Map<String, ? extends List<String>> map) {
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (Map.Entry next : map.entrySet()) {
                if (!(next.getKey() == null || ((String) next.getKey()).trim().length() == 0)) {
                    treeMap.put(next.getKey(), Collections.unmodifiableList((List) next.getValue()));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }
    }

    /* renamed from: hy$c */
    /* compiled from: HttpRequestor */
    public static abstract class c {
        public abstract OutputStream a();

        public abstract void b();

        public abstract b c();
    }

    public abstract c a(String str, Iterable<a> iterable);
}
