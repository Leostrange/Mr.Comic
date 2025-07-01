// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class lang.Class
{

    static final wy a = new wy(java/lang/Object) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            appendable.append((CharSequence)obj.getClass().getName());
            appendable.append('#');
            return wz.a(System.identityHashCode(obj), appendable);
        }

    };
    static final wy b = new wy(java/lang/String) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return appendable.append((CharSequence)obj);
        }

    };
    static final wy c = new wy(java/lang/Boolean) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Boolean)obj).booleanValue(), appendable);
        }

    };
    static final wy d = new wy(java/lang/Character) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return appendable.append(((Character)obj).charValue());
        }

    };
    static final wy e = new wy(java/lang/Byte) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Byte)obj).byteValue(), appendable);
        }

    };
    static final wy f = new wy(java/lang/Short) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Short)obj).shortValue(), appendable);
        }

    };
    static final wy g = new wy(java/lang/Integer) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Integer)obj).intValue(), appendable);
        }

    };
    static final wy h = new wy(java/lang/Long) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Long)obj).longValue(), appendable);
        }

    };
    static final wy i = new wy(java/lang/Float) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Float)obj).floatValue(), appendable);
        }

    };
    static final wy j = new wy(java/lang/Double) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((Double)obj).doubleValue(), appendable);
        }

    };
    static final wy k = new wy(java/lang/Class) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return appendable.append((CharSequence)((Class)obj).getName());
        }

    };
    static final wy l = new wy(ww) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return appendable.append((ww)obj);
        }

    };

    static void a()
    {
    }

}
