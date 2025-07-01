// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ahq extends ahp
    implements Serializable
{

    private final List a;

    public ahq()
    {
        a = new ArrayList();
    }

    public ahq(List list)
    {
        if (list == null)
        {
            a = new ArrayList();
            return;
        } else
        {
            a = new ArrayList(list);
            return;
        }
    }

    public final boolean accept(File file)
    {
        if (a.isEmpty())
        {
            return false;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (!((ahu)iterator.next()).accept(file))
            {
                return false;
            }
        }

        return true;
    }

    public final boolean accept(File file, String s)
    {
        if (a.isEmpty())
        {
            return false;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (!((ahu)iterator.next()).accept(file, s))
            {
                return false;
            }
        }

        return true;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        stringbuilder.append("(");
        if (a != null)
        {
            int i = 0;
            while (i < a.size()) 
            {
                if (i > 0)
                {
                    stringbuilder.append(",");
                }
                Object obj = a.get(i);
                if (obj == null)
                {
                    obj = "null";
                } else
                {
                    obj = obj.toString();
                }
                stringbuilder.append(((String) (obj)));
                i++;
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }
}
