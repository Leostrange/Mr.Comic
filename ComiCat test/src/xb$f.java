// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class > extends xb
{

    public final int a(Object obj)
    {
        if (obj != null)
        {
            obj = (String)obj;
            int i = ((String) (obj)).length();
            if (i != 0)
            {
                return ((String) (obj)).charAt(0) + ((String) (obj)).charAt(i - 1) * 31 + ((String) (obj)).charAt(i >> 1) * 1009 + ((String) (obj)).charAt(i >> 2) * 27583 + ((String) (obj)).charAt(i - 1 - (i >> 2)) * 0x460215b;
            }
        }
        return 0;
    }

    public final boolean a(Object obj, Object obj1)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        if (obj1 != null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (obj != obj1 && !obj.equals(obj1))
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final int compare(Object obj, Object obj1)
    {
        return ((String)obj).compareTo((String)obj1);
    }

    public final String toString()
    {
        return "String";
    }

    private >()
    {
    }

    >(byte byte0)
    {
        this();
    }
}
