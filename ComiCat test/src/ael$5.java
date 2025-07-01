// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

static final class 
    implements Comparator
{

    public final int compare(Object obj, Object obj1)
    {
        obj = (aeq)obj;
        obj1 = (aeq)obj1;
        int j = agv.c(ael.a(((aeq) (obj)))).compareToIgnoreCase(agv.c(ael.a(((aeq) (obj1)))));
        int i = j;
        if (j == 0)
        {
            i = agk.a(((aeq) (obj)).c, ((aeq) (obj1)).c);
        }
        return i;
    }

    ()
    {
    }
}
