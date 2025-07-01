// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ang.Object
    implements acy
{

    final adb a;

    public final void a(int i, int j)
    {
        long l = 0L;
        adb adb1 = a;
        adb1.d = adb1.d + (long)i;
        long l1 = (long)Math.ceil((System.currentTimeMillis() - a.e) / 1000L);
        if (l1 != 0L)
        {
            l = a.d / l1;
        }
        i = (int)l;
        l = a.c;
        l1 = a.d;
        adb.a(a, new Integer[] {
            Integer.valueOf((int)(l + l1)), Integer.valueOf(i)
        });
    }

    public final void a(acw acw1, String s)
    {
        adb adb1 = a;
        if (s == null)
        {
            s = "Network Error.";
        }
        adb1.f = s;
        adb1.g = acw1;
        adb1.h = c;
        (new StringBuilder("Server Error code: ")).append(acw1.a).append(", message: ").append(adb1.f);
    }

    public final void a(ring ring)
    {
        a.h = ring;
    }

    public final boolean a()
    {
        return a.a.a();
    }

    (adb adb1)
    {
        a = adb1;
        super();
    }
}
