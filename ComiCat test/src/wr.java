// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class wr
{

    public Object a;
    private final Object b;
    private final Class c;

    public wr(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("Default value cannot be null");
        } else
        {
            b = obj;
            a = obj;
            c = a();
            return;
        }
    }

    private static Class a()
    {
        Object obj;
        String s;
        int i;
        try
        {
            s = (new Throwable()).getStackTrace()[2].getClassName();
            i = s.indexOf("$");
        }
        catch (Throwable throwable)
        {
            wo.a(throwable);
            return null;
        }
        obj = s;
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        obj = s.substring(0, i);
        obj = Class.forName(((String) (obj)));
        return ((Class) (obj));
    }

    public String toString()
    {
        return String.valueOf(a);
    }
}
