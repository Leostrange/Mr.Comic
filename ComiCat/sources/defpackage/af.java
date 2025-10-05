package defpackage;

import java.util.LinkedHashMap;

/* renamed from: af  reason: default package */
/* compiled from: LruCache */
public class af<K, V> {
    private final LinkedHashMap<K, V> a = new LinkedHashMap<>(0, 0.75f, true);
    private int b;
    private int c = 6;
    private int d;
    private int e;
    private int f;
    private int g;

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0031, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r4) {
        /*
            r3 = this;
        L_0x0000:
            monitor-enter(r3)
            int r0 = r3.b     // Catch:{ all -> 0x0032 }
            if (r0 < 0) goto L_0x0011
            java.util.LinkedHashMap<K, V> r0 = r3.a     // Catch:{ all -> 0x0032 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x0035
            int r0 = r3.b     // Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x0035
        L_0x0011:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0032 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0032 }
            r1.<init>()     // Catch:{ all -> 0x0032 }
            java.lang.Class r2 = r3.getClass()     // Catch:{ all -> 0x0032 }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x0032 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0032 }
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0032 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0032 }
            r0.<init>(r1)     // Catch:{ all -> 0x0032 }
            throw r0     // Catch:{ all -> 0x0032 }
        L_0x0032:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0032 }
            throw r0
        L_0x0035:
            int r0 = r3.b     // Catch:{ all -> 0x0032 }
            if (r0 <= r4) goto L_0x0041
            java.util.LinkedHashMap<K, V> r0 = r3.a     // Catch:{ all -> 0x0032 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x0043
        L_0x0041:
            monitor-exit(r3)     // Catch:{ all -> 0x0032 }
            return
        L_0x0043:
            java.util.LinkedHashMap<K, V> r0 = r3.a     // Catch:{ all -> 0x0032 }
            java.util.Set r0 = r0.entrySet()     // Catch:{ all -> 0x0032 }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ all -> 0x0032 }
            java.lang.Object r0 = r0.next()     // Catch:{ all -> 0x0032 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ all -> 0x0032 }
            java.lang.Object r1 = r0.getKey()     // Catch:{ all -> 0x0032 }
            r0.getValue()     // Catch:{ all -> 0x0032 }
            java.util.LinkedHashMap<K, V> r0 = r3.a     // Catch:{ all -> 0x0032 }
            r0.remove(r1)     // Catch:{ all -> 0x0032 }
            int r0 = r3.b     // Catch:{ all -> 0x0032 }
            int r0 = r0 + -1
            r3.b = r0     // Catch:{ all -> 0x0032 }
            int r0 = r3.e     // Catch:{ all -> 0x0032 }
            int r0 = r0 + 1
            r3.e = r0     // Catch:{ all -> 0x0032 }
            monitor-exit(r3)     // Catch:{ all -> 0x0032 }
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.af.a(int):void");
    }

    public final V a(K k) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.a.get(k);
            if (v != null) {
                this.f++;
                return v;
            }
            this.g++;
            return null;
        }
    }

    public final V a(K k, V v) {
        V put;
        if (k == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.b++;
            put = this.a.put(k, v);
            if (put != null) {
                this.b--;
            }
        }
        a(this.c);
        return put;
    }

    public final synchronized String toString() {
        String format;
        int i = 0;
        synchronized (this) {
            int i2 = this.f + this.g;
            if (i2 != 0) {
                i = (this.f * 100) / i2;
            }
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(i)});
        }
        return format;
    }
}
