// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.Serializable;

public final class ahv extends ahp
    implements Serializable
{

    private final String a[];
    private final ahm b;

    public ahv(String s)
    {
        this(s, (byte)0);
    }

    private ahv(String s, byte byte0)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("The wildcard must not be null");
        } else
        {
            a = (new String[] {
                s
            });
            b = ahm.a;
            return;
        }
    }

    public final boolean accept(File file)
    {
        boolean flag1 = false;
        file = file.getName();
        String as[] = a;
        int j = as.length;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    String s = as[i];
                    if (!b.a(file, s))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public final boolean accept(File file, String s)
    {
        boolean flag1 = false;
        file = a;
        int j = file.length;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    String s1 = file[i];
                    if (!b.a(s, s1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        stringbuilder.append("(");
        if (a != null)
        {
            for (int i = 0; i < a.length; i++)
            {
                if (i > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append(a[i]);
            }

        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }
}
