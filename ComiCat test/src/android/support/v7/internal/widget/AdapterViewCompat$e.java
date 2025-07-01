// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;


// Referenced classes of package android.support.v7.internal.widget:
//            AdapterViewCompat

final class <init>
    implements Runnable
{

    final AdapterViewCompat a;

    public final void run()
    {
        if (a.v)
        {
            if (a.getAdapter() != null)
            {
                a.post(this);
            }
            return;
        } else
        {
            AdapterViewCompat.b(a);
            return;
        }
    }

    private (AdapterViewCompat adapterviewcompat)
    {
        a = adapterviewcompat;
        super();
    }

    a(AdapterViewCompat adapterviewcompat, byte byte0)
    {
        this(adapterviewcompat);
    }
}
