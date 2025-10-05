package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: nv  reason: default package */
/* compiled from: FieldInfo */
public final class nv {
    private static final Map<Field, nv> d = new WeakHashMap();
    public final boolean a;
    public final Field b;
    public final String c;

    private nv(Field field, String str) {
        this.b = field;
        this.c = str == null ? null : str.intern();
        this.a = ns.a((Type) this.b.getType());
    }

    private static Object a(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static nv a(Enum<?> enumR) {
        boolean z = true;
        try {
            nv a2 = a(enumR.getClass().getField(enumR.name()));
            if (a2 == null) {
                z = false;
            }
            oh.a(z, "enum constant missing @Value or @NullValue annotation: %s", enumR);
            return a2;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.nv a(java.lang.reflect.Field r5) {
        /*
            r1 = 0
            if (r5 != 0) goto L_0x0005
            r0 = r1
        L_0x0004:
            return r0
        L_0x0005:
            java.util.Map<java.lang.reflect.Field, nv> r2 = d
            monitor-enter(r2)
            java.util.Map<java.lang.reflect.Field, nv> r0 = d     // Catch:{ all -> 0x004b }
            java.lang.Object r0 = r0.get(r5)     // Catch:{ all -> 0x004b }
            nv r0 = (defpackage.nv) r0     // Catch:{ all -> 0x004b }
            boolean r3 = r5.isEnumConstant()     // Catch:{ all -> 0x004b }
            if (r0 != 0) goto L_0x0049
            if (r3 != 0) goto L_0x0022
            int r4 = r5.getModifiers()     // Catch:{ all -> 0x004b }
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)     // Catch:{ all -> 0x004b }
            if (r4 != 0) goto L_0x0049
        L_0x0022:
            if (r3 == 0) goto L_0x005d
            java.lang.Class<oo> r0 = defpackage.oo.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch:{ all -> 0x004b }
            oo r0 = (defpackage.oo) r0     // Catch:{ all -> 0x004b }
            if (r0 == 0) goto L_0x004e
            java.lang.String r0 = r0.a()     // Catch:{ all -> 0x004b }
        L_0x0032:
            java.lang.String r1 = "##default"
            boolean r1 = r1.equals(r0)     // Catch:{ all -> 0x004b }
            if (r1 == 0) goto L_0x0073
            java.lang.String r0 = r5.getName()     // Catch:{ all -> 0x004b }
            r1 = r0
        L_0x003f:
            nv r0 = new nv     // Catch:{ all -> 0x004b }
            r0.<init>(r5, r1)     // Catch:{ all -> 0x004b }
            java.util.Map<java.lang.reflect.Field, nv> r1 = d     // Catch:{ all -> 0x004b }
            r1.put(r5, r0)     // Catch:{ all -> 0x004b }
        L_0x0049:
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            goto L_0x0004
        L_0x004b:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            throw r0
        L_0x004e:
            java.lang.Class<oe> r0 = defpackage.oe.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch:{ all -> 0x004b }
            oe r0 = (defpackage.oe) r0     // Catch:{ all -> 0x004b }
            if (r0 == 0) goto L_0x005a
            r0 = r1
            goto L_0x0032
        L_0x005a:
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            r0 = r1
            goto L_0x0004
        L_0x005d:
            java.lang.Class<nz> r0 = defpackage.nz.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch:{ all -> 0x004b }
            nz r0 = (defpackage.nz) r0     // Catch:{ all -> 0x004b }
            if (r0 != 0) goto L_0x006a
            monitor-exit(r2)     // Catch:{ all -> 0x004b }
            r0 = r1
            goto L_0x0004
        L_0x006a:
            java.lang.String r0 = r0.a()     // Catch:{ all -> 0x004b }
            r1 = 1
            r5.setAccessible(r1)     // Catch:{ all -> 0x004b }
            goto L_0x0032
        L_0x0073:
            r1 = r0
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nv.a(java.lang.reflect.Field):nv");
    }

    public static void a(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object a2 = a(field, obj);
            if (obj2 == null) {
                if (a2 == null) {
                    return;
                }
            } else if (obj2.equals(a2)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + a2 + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
        }
        try {
            field.set(obj, obj2);
        } catch (SecurityException e) {
            throw new IllegalArgumentException(e);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public final Object a(Object obj) {
        return a(this.b, obj);
    }

    public final void a(Object obj, Object obj2) {
        a(this.b, obj, obj2);
    }

    public final boolean a() {
        return Modifier.isFinal(this.b.getModifiers());
    }

    public final <T extends Enum<T>> T b() {
        return Enum.valueOf(this.b.getDeclaringClass(), this.b.getName());
    }
}
