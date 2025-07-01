// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;

public final class aib
{

    public static String a(Iterable iterable, String s)
    {
        if (iterable != null)
        {
            if ((iterable = iterable.iterator()) != null)
            {
                if (!iterable.hasNext())
                {
                    return "";
                }
                Object obj = iterable.next();
                if (!iterable.hasNext())
                {
                    return aia.a(obj);
                }
                StringBuilder stringbuilder = new StringBuilder(256);
                if (obj != null)
                {
                    stringbuilder.append(obj);
                }
                do
                {
                    if (!iterable.hasNext())
                    {
                        break;
                    }
                    stringbuilder.append(s);
                    Object obj1 = iterable.next();
                    if (obj1 != null)
                    {
                        stringbuilder.append(obj1);
                    }
                } while (true);
                return stringbuilder.toString();
            }
        }
        return null;
    }

    public static boolean a(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence != null && charsequence1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i;
        int j1;
        int k1;
        j1 = charsequence1.length();
        k1 = charsequence.length();
        i = 0;
_L6:
        if (i > k1 - j1) goto _L1; else goto _L3
_L3:
        int j;
        int k;
        int l;
        boolean flag;
        if ((charsequence instanceof String) && (charsequence1 instanceof String))
        {
            flag = ((String)charsequence).regionMatches(true, i, (String)charsequence1, 0, j1);
            break MISSING_BLOCK_LABEL_72;
        }
        j = 0;
        k = j1;
        l = i;
_L5:
        int i1;
label0:
        {
            i1 = k - 1;
            if (k <= 0)
            {
                break MISSING_BLOCK_LABEL_179;
            }
            k = l + 1;
            char c = charsequence.charAt(l);
            l = j + 1;
            char c1 = charsequence1.charAt(j);
            if (c == c1)
            {
                break MISSING_BLOCK_LABEL_194;
            }
            if (Character.toUpperCase(c) == Character.toUpperCase(c1) || Character.toLowerCase(c) == Character.toLowerCase(c1))
            {
                break label0;
            }
            flag = false;
        }
          goto _L4
        j = l;
        l = k;
        k = i1;
          goto _L5
        flag = true;
_L4:
        if (flag)
        {
            return true;
        }
        i++;
          goto _L6
        j = l;
        l = k;
        k = i1;
          goto _L5
    }
}
