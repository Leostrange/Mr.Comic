package defpackage;

import defpackage.mz;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: my  reason: default package */
/* compiled from: JsonParser */
public abstract class my {
    private static WeakHashMap<Class<?>, Field> a = new WeakHashMap<>();
    private static final Lock b = new ReentrantLock();

    /* JADX WARNING: Code restructure failed: missing block: B:195:0x03a7, code lost:
        if (r17.getAnnotation(defpackage.na.class) != null) goto L_0x03a9;
     */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x02ca A[Catch:{ IllegalArgumentException -> 0x004d }] */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x02d2 A[Catch:{ IllegalArgumentException -> 0x004d }] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.lang.Object a(java.lang.reflect.Field r17, java.lang.reflect.Type r18, java.util.ArrayList<java.lang.reflect.Type> r19, defpackage.mt r20, boolean r21) {
        /*
            r16 = this;
            r0 = r19
            r1 = r18
            java.lang.reflect.Type r8 = defpackage.ns.a((java.util.List<java.lang.reflect.Type>) r0, (java.lang.reflect.Type) r1)
            boolean r2 = r8 instanceof java.lang.Class
            if (r2 == 0) goto L_0x0023
            r2 = r8
            java.lang.Class r2 = (java.lang.Class) r2
        L_0x000f:
            boolean r3 = r8 instanceof java.lang.reflect.ParameterizedType
            if (r3 == 0) goto L_0x001a
            r2 = r8
            java.lang.reflect.ParameterizedType r2 = (java.lang.reflect.ParameterizedType) r2
            java.lang.Class r2 = defpackage.on.a((java.lang.reflect.ParameterizedType) r2)
        L_0x001a:
            java.lang.Class<java.lang.Void> r3 = java.lang.Void.class
            if (r2 != r3) goto L_0x0025
            r16.f()
            r9 = 0
        L_0x0022:
            return r9
        L_0x0023:
            r2 = 0
            goto L_0x000f
        L_0x0025:
            nb r3 = r16.d()
            int[] r4 = defpackage.my.AnonymousClass1.a     // Catch:{ IllegalArgumentException -> 0x004d }
            nb r5 = r16.d()     // Catch:{ IllegalArgumentException -> 0x004d }
            int r5 = r5.ordinal()     // Catch:{ IllegalArgumentException -> 0x004d }
            r4 = r4[r5]     // Catch:{ IllegalArgumentException -> 0x004d }
            switch(r4) {
                case 1: goto L_0x00eb;
                case 2: goto L_0x0080;
                case 3: goto L_0x0080;
                case 4: goto L_0x00eb;
                case 5: goto L_0x00eb;
                case 6: goto L_0x0284;
                case 7: goto L_0x0284;
                case 8: goto L_0x02ae;
                case 9: goto L_0x02ae;
                case 10: goto L_0x035d;
                case 11: goto L_0x03bb;
                default: goto L_0x0038;
            }     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x0038:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r5 = "unexpected JSON node type: "
            r4.<init>(r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.StringBuilder r3 = r4.append(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.toString()     // Catch:{ IllegalArgumentException -> 0x004d }
            r2.<init>(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            throw r2     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x004d:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r16.e()
            if (r4 == 0) goto L_0x0062
            java.lang.String r5 = "key "
            java.lang.StringBuilder r5 = r3.append(r5)
            r5.append(r4)
        L_0x0062:
            if (r17 == 0) goto L_0x0076
            if (r4 == 0) goto L_0x006b
            java.lang.String r4 = ", "
            r3.append(r4)
        L_0x006b:
            java.lang.String r4 = "field "
            java.lang.StringBuilder r4 = r3.append(r4)
            r0 = r17
            r4.append(r0)
        L_0x0076:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r3 = r3.toString()
            r4.<init>(r3, r2)
            throw r4
        L_0x0080:
            boolean r10 = defpackage.on.a((java.lang.reflect.Type) r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r8 == 0) goto L_0x0092
            if (r10 != 0) goto L_0x0092
            if (r2 == 0) goto L_0x00cc
            java.lang.Class<java.util.Collection> r3 = java.util.Collection.class
            boolean r3 = defpackage.on.a((java.lang.Class<?>) r2, (java.lang.Class<?>) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x00cc
        L_0x0092:
            r3 = 1
        L_0x0093:
            java.lang.String r4 = "expected collection or array type but got %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ IllegalArgumentException -> 0x004d }
            r6 = 0
            r5[r6] = r8     // Catch:{ IllegalArgumentException -> 0x004d }
            defpackage.oh.a(r3, r4, r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.util.Collection r9 = defpackage.ns.b((java.lang.reflect.Type) r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            r3 = 0
            if (r10 == 0) goto L_0x00ce
            java.lang.reflect.Type r2 = defpackage.on.b(r8)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x00a9:
            r0 = r19
            java.lang.reflect.Type r4 = defpackage.ns.a((java.util.List<java.lang.reflect.Type>) r0, (java.lang.reflect.Type) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            nb r2 = r16.q()     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x00b3:
            nb r3 = defpackage.nb.END_ARRAY     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == r3) goto L_0x00dd
            r7 = 1
            r2 = r16
            r3 = r17
            r5 = r19
            r6 = r20
            java.lang.Object r2 = r2.a((java.lang.reflect.Field) r3, (java.lang.reflect.Type) r4, (java.util.ArrayList<java.lang.reflect.Type>) r5, (defpackage.mt) r6, (boolean) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
            r9.add(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            nb r2 = r16.c()     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x00b3
        L_0x00cc:
            r3 = 0
            goto L_0x0093
        L_0x00ce:
            if (r2 == 0) goto L_0x040d
            java.lang.Class<java.lang.Iterable> r4 = java.lang.Iterable.class
            boolean r2 = r4.isAssignableFrom(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x040d
            java.lang.reflect.Type r2 = defpackage.on.c(r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x00a9
        L_0x00dd:
            if (r10 == 0) goto L_0x0022
            r0 = r19
            java.lang.Class r2 = defpackage.on.a((java.util.List<java.lang.reflect.Type>) r0, (java.lang.reflect.Type) r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r9 = defpackage.on.a((java.util.Collection<?>) r9, (java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x00eb:
            boolean r3 = defpackage.on.a((java.lang.reflect.Type) r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != 0) goto L_0x014a
            r3 = 1
        L_0x00f2:
            java.lang.String r4 = "expected object or map type but got %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ IllegalArgumentException -> 0x004d }
            r6 = 0
            r5[r6] = r8     // Catch:{ IllegalArgumentException -> 0x004d }
            defpackage.oh.a(r3, r4, r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r21 == 0) goto L_0x014c
            java.lang.reflect.Field r3 = b(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            r11 = r3
        L_0x0104:
            if (r2 == 0) goto L_0x014f
            java.lang.Class<java.util.Map> r3 = java.util.Map.class
            boolean r3 = defpackage.on.a((java.lang.Class<?>) r2, (java.lang.Class<?>) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x014f
            r3 = 1
        L_0x010f:
            if (r11 == 0) goto L_0x0151
            mu r9 = new mu     // Catch:{ IllegalArgumentException -> 0x004d }
            r9.<init>()     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x0116:
            int r12 = r19.size()     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r8 == 0) goto L_0x0121
            r0 = r19
            r0.add(r8)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x0121:
            if (r3 == 0) goto L_0x0161
            java.lang.Class<nw> r3 = defpackage.nw.class
            boolean r3 = r3.isAssignableFrom(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != 0) goto L_0x0161
            java.lang.Class<java.util.Map> r3 = java.util.Map.class
            boolean r2 = r3.isAssignableFrom(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x015f
            java.lang.reflect.Type r5 = defpackage.on.d(r8)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x0137:
            if (r5 == 0) goto L_0x0161
            r0 = r9
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ IllegalArgumentException -> 0x004d }
            r4 = r0
            r2 = r16
            r3 = r17
            r6 = r19
            r7 = r20
            r2.a((java.lang.reflect.Field) r3, (java.util.Map<java.lang.String, java.lang.Object>) r4, (java.lang.reflect.Type) r5, (java.util.ArrayList<java.lang.reflect.Type>) r6, (defpackage.mt) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x014a:
            r3 = 0
            goto L_0x00f2
        L_0x014c:
            r3 = 0
            r11 = r3
            goto L_0x0104
        L_0x014f:
            r3 = 0
            goto L_0x010f
        L_0x0151:
            if (r3 != 0) goto L_0x0155
            if (r2 != 0) goto L_0x015a
        L_0x0155:
            java.util.Map r9 = defpackage.ns.b((java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0116
        L_0x015a:
            java.lang.Object r9 = defpackage.on.a(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0116
        L_0x015f:
            r5 = 0
            goto L_0x0137
        L_0x0161:
            boolean r2 = r9 instanceof defpackage.mu     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x016f
            r0 = r9
            mu r0 = (defpackage.mu) r0     // Catch:{ IllegalArgumentException -> 0x004d }
            r2 = r0
            mv r3 = r16.a()     // Catch:{ IllegalArgumentException -> 0x004d }
            r2.a = r3     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x016f:
            nb r2 = r16.q()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class r5 = r9.getClass()     // Catch:{ IllegalArgumentException -> 0x004d }
            nq r13 = defpackage.nq.a((java.lang.Class<?>) r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class<nw> r3 = defpackage.nw.class
            boolean r14 = r3.isAssignableFrom(r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r14 != 0) goto L_0x023c
            java.lang.Class<java.util.Map> r3 = java.util.Map.class
            boolean r3 = r3.isAssignableFrom(r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x023c
            r0 = r9
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ IllegalArgumentException -> 0x004d }
            r4 = r0
            r3 = 0
            java.lang.reflect.Type r5 = defpackage.on.d(r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            r2 = r16
            r6 = r19
            r7 = r20
            r2.a((java.lang.reflect.Field) r3, (java.util.Map<java.lang.String, java.lang.Object>) r4, (java.lang.reflect.Type) r5, (java.util.ArrayList<java.lang.reflect.Type>) r6, (defpackage.mt) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x019d:
            if (r8 == 0) goto L_0x01a4
            r0 = r19
            r0.remove(r12)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x01a4:
            if (r11 == 0) goto L_0x0022
            r0 = r9
            mu r0 = (defpackage.mu) r0     // Catch:{ IllegalArgumentException -> 0x004d }
            r2 = r0
            java.lang.String r3 = r11.getName()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r3 = r2.get(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x027a
            r2 = 1
        L_0x01b5:
            java.lang.String r4 = "No value specified for @JsonPolymorphicTypeMap field"
            defpackage.oh.a((boolean) r2, (java.lang.Object) r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.toString()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class<mz> r2 = defpackage.mz.class
            java.lang.annotation.Annotation r2 = r11.getAnnotation(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            mz r2 = (defpackage.mz) r2     // Catch:{ IllegalArgumentException -> 0x004d }
            r4 = 0
            mz$a[] r5 = r2.a()     // Catch:{ IllegalArgumentException -> 0x004d }
            int r6 = r5.length     // Catch:{ IllegalArgumentException -> 0x004d }
            r2 = 0
        L_0x01cd:
            if (r2 >= r6) goto L_0x01df
            r7 = r5[r2]     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r8 = r7.a()     // Catch:{ IllegalArgumentException -> 0x004d }
            boolean r8 = r8.equals(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r8 == 0) goto L_0x027d
            java.lang.Class r4 = r7.b()     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x01df:
            if (r4 == 0) goto L_0x0281
            r2 = 1
        L_0x01e2:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r6 = "No TypeDef annotation found with key: "
            r5.<init>(r6)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.StringBuilder r3 = r5.append(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.toString()     // Catch:{ IllegalArgumentException -> 0x004d }
            defpackage.oh.a((boolean) r2, (java.lang.Object) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            mv r2 = r16.a()     // Catch:{ IllegalArgumentException -> 0x004d }
            r3 = 0
            java.lang.String r3 = r2.a(r9, r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            my r2 = r2.a((java.lang.String) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            r2.p()     // Catch:{ IllegalArgumentException -> 0x004d }
            r6 = 0
            r7 = 0
            r3 = r17
            r5 = r19
            java.lang.Object r9 = r2.a((java.lang.reflect.Field) r3, (java.lang.reflect.Type) r4, (java.util.ArrayList<java.lang.reflect.Type>) r5, (defpackage.mt) r6, (boolean) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0210:
            java.lang.reflect.Field r3 = r10.b     // Catch:{ IllegalArgumentException -> 0x004d }
            int r15 = r19.size()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.reflect.Type r2 = r3.getGenericType()     // Catch:{ IllegalArgumentException -> 0x004d }
            r0 = r19
            r0.add(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.reflect.Field r2 = r10.b     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.reflect.Type r4 = r2.getGenericType()     // Catch:{ IllegalArgumentException -> 0x004d }
            r7 = 1
            r2 = r16
            r5 = r19
            r6 = r20
            java.lang.Object r2 = r2.a((java.lang.reflect.Field) r3, (java.lang.reflect.Type) r4, (java.util.ArrayList<java.lang.reflect.Type>) r5, (defpackage.mt) r6, (boolean) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
            r0 = r19
            r0.remove(r15)     // Catch:{ IllegalArgumentException -> 0x004d }
            r10.a((java.lang.Object) r9, (java.lang.Object) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x0238:
            nb r2 = r16.c()     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x023c:
            nb r3 = defpackage.nb.FIELD_NAME     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x019d
            java.lang.String r15 = r16.g()     // Catch:{ IllegalArgumentException -> 0x004d }
            r16.c()     // Catch:{ IllegalArgumentException -> 0x004d }
            nv r10 = r13.a((java.lang.String) r15)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r10 == 0) goto L_0x025f
            boolean r2 = r10.a()     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x0210
            boolean r2 = r10.a     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != 0) goto L_0x0210
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = "final array/object fields are not supported"
            r2.<init>(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            throw r2     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x025f:
            if (r14 == 0) goto L_0x0276
            r0 = r9
            nw r0 = (defpackage.nw) r0     // Catch:{ IllegalArgumentException -> 0x004d }
            r10 = r0
            r3 = 0
            r4 = 0
            r7 = 1
            r2 = r16
            r5 = r19
            r6 = r20
            java.lang.Object r2 = r2.a((java.lang.reflect.Field) r3, (java.lang.reflect.Type) r4, (java.util.ArrayList<java.lang.reflect.Type>) r5, (defpackage.mt) r6, (boolean) r7)     // Catch:{ IllegalArgumentException -> 0x004d }
            r10.d(r15, r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0238
        L_0x0276:
            r16.f()     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0238
        L_0x027a:
            r2 = 0
            goto L_0x01b5
        L_0x027d:
            int r2 = r2 + 1
            goto L_0x01cd
        L_0x0281:
            r2 = 0
            goto L_0x01e2
        L_0x0284:
            if (r8 == 0) goto L_0x0294
            java.lang.Class r4 = java.lang.Boolean.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == r4) goto L_0x0294
            if (r2 == 0) goto L_0x02a8
            java.lang.Class<java.lang.Boolean> r4 = java.lang.Boolean.class
            boolean r2 = r2.isAssignableFrom(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x02a8
        L_0x0294:
            r2 = 1
        L_0x0295:
            java.lang.String r4 = "expected type Boolean or boolean but got %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ IllegalArgumentException -> 0x004d }
            r6 = 0
            r5[r6] = r8     // Catch:{ IllegalArgumentException -> 0x004d }
            defpackage.oh.a(r2, r4, r5)     // Catch:{ IllegalArgumentException -> 0x004d }
            nb r2 = defpackage.nb.VALUE_TRUE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != r2) goto L_0x02aa
            java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x02a8:
            r2 = 0
            goto L_0x0295
        L_0x02aa:
            java.lang.Boolean r9 = java.lang.Boolean.FALSE     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x02ae:
            if (r17 == 0) goto L_0x02ba
            java.lang.Class<na> r3 = defpackage.na.class
            r0 = r17
            java.lang.annotation.Annotation r3 = r0.getAnnotation(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != 0) goto L_0x02d0
        L_0x02ba:
            r3 = 1
        L_0x02bb:
            java.lang.String r4 = "number type formatted as a JSON number cannot use @JsonString annotation"
            defpackage.oh.a((boolean) r3, (java.lang.Object) r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x02ca
            java.lang.Class<java.math.BigDecimal> r3 = java.math.BigDecimal.class
            boolean r3 = r2.isAssignableFrom(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x02d2
        L_0x02ca:
            java.math.BigDecimal r9 = r16.o()     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x02d0:
            r3 = 0
            goto L_0x02bb
        L_0x02d2:
            java.lang.Class<java.math.BigInteger> r3 = java.math.BigInteger.class
            if (r2 != r3) goto L_0x02dc
            java.math.BigInteger r9 = r16.n()     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x02dc:
            java.lang.Class<java.lang.Double> r3 = java.lang.Double.class
            if (r2 == r3) goto L_0x02e4
            java.lang.Class r3 = java.lang.Double.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x02ee
        L_0x02e4:
            double r2 = r16.m()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Double r9 = java.lang.Double.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x02ee:
            java.lang.Class<java.lang.Long> r3 = java.lang.Long.class
            if (r2 == r3) goto L_0x02f6
            java.lang.Class r3 = java.lang.Long.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x0300
        L_0x02f6:
            long r2 = r16.l()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Long r9 = java.lang.Long.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0300:
            java.lang.Class<java.lang.Float> r3 = java.lang.Float.class
            if (r2 == r3) goto L_0x0308
            java.lang.Class r3 = java.lang.Float.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x0312
        L_0x0308:
            float r2 = r16.k()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Float r9 = java.lang.Float.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0312:
            java.lang.Class<java.lang.Integer> r3 = java.lang.Integer.class
            if (r2 == r3) goto L_0x031a
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x0324
        L_0x031a:
            int r2 = r16.j()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0324:
            java.lang.Class<java.lang.Short> r3 = java.lang.Short.class
            if (r2 == r3) goto L_0x032c
            java.lang.Class r3 = java.lang.Short.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x0336
        L_0x032c:
            short r2 = r16.i()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Short r9 = java.lang.Short.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0336:
            java.lang.Class<java.lang.Byte> r3 = java.lang.Byte.class
            if (r2 == r3) goto L_0x033e
            java.lang.Class r3 = java.lang.Byte.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 != r3) goto L_0x0348
        L_0x033e:
            byte r2 = r16.h()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Byte r9 = java.lang.Byte.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0348:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r4 = "expected numeric type but got "
            r3.<init>(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.StringBuilder r3 = r3.append(r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.toString()     // Catch:{ IllegalArgumentException -> 0x004d }
            r2.<init>(r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            throw r2     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x035d:
            java.lang.String r3 = r16.g()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.trim()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.util.Locale r4 = java.util.Locale.US     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.String r3 = r3.toLowerCase(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class r4 = java.lang.Float.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == r4) goto L_0x037b
            java.lang.Class<java.lang.Float> r4 = java.lang.Float.class
            if (r2 == r4) goto L_0x037b
            java.lang.Class r4 = java.lang.Double.TYPE     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == r4) goto L_0x037b
            java.lang.Class<java.lang.Double> r4 = java.lang.Double.class
            if (r2 != r4) goto L_0x0393
        L_0x037b:
            java.lang.String r4 = "nan"
            boolean r4 = r3.equals(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r4 != 0) goto L_0x03af
            java.lang.String r4 = "infinity"
            boolean r4 = r3.equals(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r4 != 0) goto L_0x03af
            java.lang.String r4 = "-infinity"
            boolean r3 = r3.equals(r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != 0) goto L_0x03af
        L_0x0393:
            if (r2 == 0) goto L_0x03a9
            java.lang.Class<java.lang.Number> r3 = java.lang.Number.class
            boolean r2 = r3.isAssignableFrom(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x03a9
            if (r17 == 0) goto L_0x03b9
            java.lang.Class<na> r2 = defpackage.na.class
            r0 = r17
            java.lang.annotation.Annotation r2 = r0.getAnnotation(r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x03b9
        L_0x03a9:
            r2 = 1
        L_0x03aa:
            java.lang.String r3 = "number field formatted as a JSON string must use the @JsonString annotation"
            defpackage.oh.a((boolean) r2, (java.lang.Object) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
        L_0x03af:
            java.lang.String r2 = r16.g()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r9 = defpackage.ns.a((java.lang.reflect.Type) r8, (java.lang.String) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x03b9:
            r2 = 0
            goto L_0x03aa
        L_0x03bb:
            if (r2 == 0) goto L_0x03c3
            boolean r3 = r2.isPrimitive()     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 != 0) goto L_0x03e9
        L_0x03c3:
            r3 = 1
        L_0x03c4:
            java.lang.String r4 = "primitive number field but found a JSON null"
            defpackage.oh.a((boolean) r3, (java.lang.Object) r4)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r2 == 0) goto L_0x0401
            int r3 = r2.getModifiers()     // Catch:{ IllegalArgumentException -> 0x004d }
            r3 = r3 & 1536(0x600, float:2.152E-42)
            if (r3 == 0) goto L_0x0401
            java.lang.Class<java.util.Collection> r3 = java.util.Collection.class
            boolean r3 = defpackage.on.a((java.lang.Class<?>) r2, (java.lang.Class<?>) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x03eb
            java.util.Collection r2 = defpackage.ns.b((java.lang.reflect.Type) r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class r2 = r2.getClass()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r9 = defpackage.ns.a((java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x03e9:
            r3 = 0
            goto L_0x03c4
        L_0x03eb:
            java.lang.Class<java.util.Map> r3 = java.util.Map.class
            boolean r3 = defpackage.on.a((java.lang.Class<?>) r2, (java.lang.Class<?>) r3)     // Catch:{ IllegalArgumentException -> 0x004d }
            if (r3 == 0) goto L_0x0401
            java.util.Map r2 = defpackage.ns.b((java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Class r2 = r2.getClass()     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r9 = defpackage.ns.a((java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x0401:
            r0 = r19
            java.lang.Class r2 = defpackage.on.a((java.util.List<java.lang.reflect.Type>) r0, (java.lang.reflect.Type) r8)     // Catch:{ IllegalArgumentException -> 0x004d }
            java.lang.Object r9 = defpackage.ns.a((java.lang.Class<?>) r2)     // Catch:{ IllegalArgumentException -> 0x004d }
            goto L_0x0022
        L_0x040d:
            r2 = r3
            goto L_0x00a9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.my.a(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, mt, boolean):java.lang.Object");
    }

    private void a(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, mt mtVar) {
        nb q = q();
        while (q == nb.FIELD_NAME) {
            String g = g();
            c();
            map.put(g, a(field, type, arrayList, mtVar, true));
            q = c();
        }
    }

    private static Field b(Class<?> cls) {
        Field field;
        if (cls == null) {
            return null;
        }
        b.lock();
        try {
            if (a.containsKey(cls)) {
                return a.get(cls);
            }
            Field field2 = null;
            for (T t : Collections.unmodifiableCollection(nq.a(cls).c.values())) {
                Field field3 = t.b;
                mz mzVar = (mz) field3.getAnnotation(mz.class);
                if (mzVar != null) {
                    oh.a(field2 == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    oh.a(ns.a((Type) field3.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field3.getType());
                    mz.a[] a2 = mzVar.a();
                    HashSet hashSet = new HashSet();
                    oh.a(a2.length > 0, (Object) "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (mz.a aVar : a2) {
                        oh.a(hashSet.add(aVar.a()), "Class contains two @TypeDef annotations with identical key: %s", aVar.a());
                    }
                    field = field3;
                } else {
                    field = field2;
                }
                field2 = field;
            }
            a.put(cls, field2);
            b.unlock();
            return field2;
        } finally {
            b.unlock();
        }
    }

    private nb p() {
        nb d = d();
        nb c = d == null ? c() : d;
        oh.a(c != null, (Object) "no JSON input found");
        return c;
    }

    private nb q() {
        nb p = p();
        switch (p) {
            case START_OBJECT:
                nb c = c();
                oh.a(c == nb.FIELD_NAME || c == nb.END_OBJECT, (Object) c);
                return c;
            case START_ARRAY:
                return c();
            default:
                return p;
        }
    }

    public final <T> T a(Class<T> cls) {
        try {
            return a(cls, false);
        } finally {
            b();
        }
    }

    public final Object a(Type type, boolean z) {
        try {
            if (!Void.class.equals(type)) {
                p();
            }
            return a((Field) null, type, (ArrayList<Type>) new ArrayList(), (mt) null, true);
        } finally {
            if (z) {
                b();
            }
        }
    }

    public final String a(Set<String> set) {
        nb q = q();
        while (q == nb.FIELD_NAME) {
            String g = g();
            c();
            if (set.contains(g)) {
                return g;
            }
            f();
            q = c();
        }
        return null;
    }

    public abstract mv a();

    public abstract void b();

    public abstract nb c();

    public abstract nb d();

    public abstract String e();

    public abstract my f();

    public abstract String g();

    public abstract byte h();

    public abstract short i();

    public abstract int j();

    public abstract float k();

    public abstract long l();

    public abstract double m();

    public abstract BigInteger n();

    public abstract BigDecimal o();
}
