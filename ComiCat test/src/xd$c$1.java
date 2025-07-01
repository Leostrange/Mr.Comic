// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class t> extends xb
{

    final ng.Object i;

    public final int a(Object obj)
    {
        obj = (java.util.ry)obj;
        return xd.l(i.i).a(((java.util.ry) (obj)).getKey()) + xd.k(i.i).a(((java.util.ry) (obj)).getValue());
    }

    public final boolean a(Object obj, Object obj1)
    {
        if (!(obj instanceof java.util.ry) || !(obj1 instanceof java.util.ry)) goto _L2; else goto _L1
_L1:
        obj = (java.util.ry)obj;
        obj1 = (java.util.ry)obj1;
        if (!xd.l(i.i).a(((java.util.ry) (obj)).getKey(), ((java.util.ry) (obj1)).getKey()) || !xd.k(i.i).a(((java.util.ry) (obj)).getValue(), ((java.util.ry) (obj1)).getValue())) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (obj != null || obj1 != null)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final int compare(Object obj, Object obj1)
    {
        return xd.l(i.i).compare(obj, obj1);
    }

    ct(ct ct)
    {
        i = ct;
        super();
    }
}
