// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class c
{

    final String a;
    final ang.String b;
    final int c;

    public final String a(char ac[], int i, int j)
    {
        String s1 = a;
        ang.String s = b;
        do
        {
            if (s1.length() == j)
            {
                int k = 0;
                int l;
                do
                {
                    l = k;
                    if (s1.charAt(k) != ac[i + k])
                    {
                        break;
                    }
                    l = k + 1;
                    k = l;
                } while (l < j);
                if (l == j)
                {
                    return s1;
                }
            }
            if (s != null)
            {
                s1 = s.a;
                s = s.b;
            } else
            {
                return null;
            }
        } while (true);
    }

    public (String s, ring ring)
    {
        a = s;
        b = ring;
        int i;
        if (ring == null)
        {
            i = 1;
        } else
        {
            i = ring.c + 1;
        }
        c = i;
    }
}
