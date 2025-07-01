// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

public final class agk
    implements Comparator
{

    public static int a(String s, String s1)
    {
        int j;
        int k;
        int j1;
        int k1;
        j1 = s.length();
        k1 = s1.length();
        k = 0;
        j = 0;
_L12:
        String s2;
        String s3;
        int l1;
        int i2;
        if (j >= j1 || k >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        s2 = a(s, j1, j);
        l1 = s2.length();
        s3 = a(s1, k1, k);
        i2 = s3.length();
        if (!a(s2.charAt(0)) || !a(s3.charAt(0))) goto _L2; else goto _L1
_L1:
        int i;
        int i1;
        int j2;
        j2 = s2.length();
        i1 = j2 - s3.length();
        i = i1;
        if (i1 != 0) goto _L4; else goto _L3
_L3:
        int l;
        l = 0;
        i = i1;
_L8:
        if (l >= j2) goto _L4; else goto _L5
_L5:
        i = s2.charAt(l) - s3.charAt(l);
        if (i == 0) goto _L7; else goto _L6
_L6:
        l = i;
_L10:
        return l;
_L7:
        l++;
          goto _L8
_L2:
        i = s2.compareToIgnoreCase(s3);
_L4:
        l = i;
        if (i != 0) goto _L10; else goto _L9
_L9:
        k += i2;
        j += l1;
        if (true) goto _L12; else goto _L11
_L11:
        return j1 - k1;
    }

    private static final String a(String s, int i, int j)
    {
        StringBuilder stringbuilder = new StringBuilder();
        char c = s.charAt(j);
        stringbuilder.append(c);
        j++;
        int k = j;
        if (a(c))
        {
            do
            {
                if (j >= i)
                {
                    break;
                }
                char c1 = s.charAt(j);
                if (!a(c1))
                {
                    break;
                }
                stringbuilder.append(c1);
                j++;
            } while (true);
        } else
        {
            do
            {
                if (k >= i)
                {
                    break;
                }
                char c2 = s.charAt(k);
                if (a(c2))
                {
                    break;
                }
                stringbuilder.append(c2);
                k++;
            } while (true);
        }
        return stringbuilder.toString();
    }

    private static final boolean a(char c)
    {
        return c >= '0' && c <= '9';
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((String)obj, (String)obj1);
    }
}
