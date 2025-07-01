// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;


// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat

static class mObj2
{

    private final Object mObj1;
    private final Object mObj2;

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
label0:
        {
            if (!(obj instanceof mObj2))
            {
                return false;
            }
            obj = (mObj2)obj;
            if (mObj1 != null ? mObj1.equals(((mObj1) (obj)).mObj1) : ((mObj1) (obj)).mObj1 == null)
            {
                break label0;
            } else
            {
                break; /* Loop/switch isn't completed */
            }
        }
        if (mObj2 != null) goto _L4; else goto _L3
_L3:
        if (((mObj2) (obj)).mObj2 == null) goto _L1; else goto _L5
_L5:
        return false;
_L4:
        if (mObj2.equals(((mObj2) (obj)).mObj2))
        {
            return true;
        }
        if (true) goto _L5; else goto _L6
_L6:
    }

    public int hashCode()
    {
        int j = 0;
        int i;
        if (mObj1 == null)
        {
            i = 0;
        } else
        {
            i = mObj1.hashCode();
        }
        if (mObj2 != null)
        {
            j = mObj2.hashCode();
        }
        return i + j;
    }

    public String toString()
    {
        return (new StringBuilder("[")).append(mObj1).append(':').append(mObj2).append(']').toString();
    }

    public (Object obj, Object obj1)
    {
        mObj1 = obj;
        mObj2 = obj1;
    }
}
