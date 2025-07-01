// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class c
{

    protected final ajm a;
    protected final b b;
    final int c;

    public final ajm a(int i, int j, int k)
    {
        if (a.hashCode() != i || !a.a(j, k)) goto _L2; else goto _L1
_L1:
        ajm ajm1 = a;
_L6:
        return ajm1;
_L2:
        ject ject = b;
_L7:
        if (ject == null) goto _L4; else goto _L3
_L3:
        ajm ajm2;
        ajm2 = ject.a;
        if (ajm2.hashCode() != i)
        {
            continue; /* Loop/switch isn't completed */
        }
        ajm1 = ajm2;
        if (ajm2.a(j, k)) goto _L6; else goto _L5
_L5:
        ject = ject.b;
          goto _L7
_L4:
        return null;
    }

    public final ajm a(int i, int ai[], int j)
    {
        if (a.hashCode() != i || !a.a(ai, j)) goto _L2; else goto _L1
_L1:
        ajm ajm1 = a;
_L6:
        return ajm1;
_L2:
        b b1 = b;
_L7:
        if (b1 == null) goto _L4; else goto _L3
_L3:
        ajm ajm2;
        ajm2 = b1.a;
        if (ajm2.hashCode() != i)
        {
            continue; /* Loop/switch isn't completed */
        }
        ajm1 = ajm2;
        if (ajm2.a(ai, j)) goto _L6; else goto _L5
_L5:
        b1 = b1.b;
          goto _L7
_L4:
        return null;
    }

    (ajm ajm1, ject ject)
    {
        a = ajm1;
        b = ject;
        int i;
        if (ject == null)
        {
            i = 1;
        } else
        {
            i = ject.c + 1;
        }
        c = i;
    }
}
