// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

final class ang.Object
    implements Comparator
{

    final acx a;

    public final int compare(Object obj, Object obj1)
    {
        int j = 1000;
        byte byte0 = 100;
        obj = (acv)obj;
        obj1 = (acv)obj1;
        char c;
        int i;
        if (((acv) (obj)).e == g)
        {
            c = '\u03E8';
        } else
        {
            c = '\0';
        }
        i = c;
        if (((acv) (obj)).e != c)
        {
            int k;
            if (((acv) (obj)).a.d())
            {
                i = 100;
            } else
            {
                i = 0;
            }
            i = c + i;
        }
        k = ((acv) (obj)).e;
        if (((acv) (obj1)).e == g)
        {
            c = j;
        } else
        {
            c = '\0';
        }
        j = c;
        if (((acv) (obj1)).e != c)
        {
            if (((acv) (obj1)).a.d())
            {
                j = byte0;
            } else
            {
                j = 0;
            }
            j = c + j;
        }
        return (j + (((acv) (obj1)).e - 1)) - (i + (k - 1));
    }

    (acx acx1)
    {
        a = acx1;
        super();
    }
}
