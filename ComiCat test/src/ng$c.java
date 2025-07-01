// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

static final class r extends ng
{

    private final char q[];
    private final char r[];

    public final boolean a(char c1)
    {
        int i = Arrays.binarySearch(q, c1);
        if (i < 0)
        {
            if ((i = ~i - 1) < 0 || c1 > r[i])
            {
                return false;
            }
        }
        return true;
    }

    >(String s, char ac[], char ac1[])
    {
        super(s);
        q = ac;
        r = ac1;
        int i;
        boolean flag;
        if (ac.length == ac1.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        i = 0;
        while (i < ac.length) 
        {
            if (ac[i] <= ac1[i])
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ni.a(flag);
            if (i + 1 < ac.length)
            {
                if (ac1[i] < ac[i + 1])
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                ni.a(flag);
            }
            i++;
        }
    }
}
