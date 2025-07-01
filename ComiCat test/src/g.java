// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class g
{
    public static interface a
    {
    }


    public int a;
    public a b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;

    public final void a(a a1)
    {
        if (b == null)
        {
            throw new IllegalStateException("No listener register");
        }
        if (b != a1)
        {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else
        {
            b = null;
            return;
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        ad.a(this, stringbuilder);
        stringbuilder.append(" id=");
        stringbuilder.append(a);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
