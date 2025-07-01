// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class ot extends oq
{

    public ot()
    {
    }

    private static char[] a(char ac[], int i, int j)
    {
        char ac1[] = new char[j];
        if (i > 0)
        {
            System.arraycopy(ac, 0, ac1, 0, i);
        }
        return ac1;
    }

    protected abstract int a(CharSequence charsequence, int i, int j);

    protected final String a(String s, int i)
    {
        int l1 = s.length();
        char ac[] = os.a();
        int j = 0;
        boolean flag = false;
        int i1 = i;
        i = ((flag) ? 1 : 0);
        while (i1 < l1) 
        {
            int k;
            if (i1 < l1)
            {
                int j1 = i1 + 1;
                char c = s.charAt(i1);
                k = c;
                if (c >= '\uD800')
                {
                    if (c > '\uDFFF')
                    {
                        k = c;
                    } else
                    if (c <= '\uDBFF')
                    {
                        if (j1 == l1)
                        {
                            k = -c;
                        } else
                        {
                            char c1 = s.charAt(j1);
                            if (Character.isLowSurrogate(c1))
                            {
                                k = Character.toCodePoint(c, c1);
                            } else
                            {
                                throw new IllegalArgumentException((new StringBuilder("Expected low surrogate but got char '")).append(c1).append("' with value ").append(c1).append(" at index ").append(j1).toString());
                            }
                        }
                    } else
                    {
                        throw new IllegalArgumentException((new StringBuilder("Unexpected low surrogate character '")).append(c).append("' with value ").append(c).append(" at index ").append(j1 - 1).toString());
                    }
                }
                if (k < 0)
                {
                    throw new IllegalArgumentException("Trailing high surrogate at end of input");
                }
            } else
            {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            }
            char ac3[] = a(k);
            int k1;
            if (Character.isSupplementaryCodePoint(k))
            {
                k = 2;
            } else
            {
                k = 1;
            }
            k1 = k + i1;
            char ac2[];
            if (ac3 != null)
            {
                int i2 = i1 - j;
                k = i + i2 + ac3.length;
                char ac1[] = ac;
                if (ac.length < k)
                {
                    ac1 = a(ac, i, ((k + l1) - i1) + 32);
                }
                k = i;
                if (i2 > 0)
                {
                    s.getChars(j, i1, ac1, i);
                    k = i + i2;
                }
                i = k;
                if (ac3.length > 0)
                {
                    System.arraycopy(ac3, 0, ac1, k, ac3.length);
                    i = k + ac3.length;
                }
                j = i;
                i = k1;
                ac = ac1;
            } else
            {
                int l = i;
                i = j;
                j = l;
            }
            i1 = a(((CharSequence) (s)), k1, l1);
            k = i;
            i = j;
            j = k;
        }
        i1 = l1 - j;
        k = i;
        ac2 = ac;
        if (i1 > 0)
        {
            k = i1 + i;
            ac2 = ac;
            if (ac.length < k)
            {
                ac2 = a(ac, i, k);
            }
            s.getChars(j, l1, ac2, i);
        }
        return new String(ac2, 0, k);
    }

    protected abstract char[] a(int i);
}
