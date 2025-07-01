// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Calendar;

// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat

static class mValues
    implements mValues
{

    private final int mField;
    private final String mValues[];

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        stringbuffer.append(mValues[calendar.get(mField)]);
    }

    public int estimateLength()
    {
        int i = 0;
        int j = mValues.length;
        do
        {
            j--;
            if (j < 0)
            {
                break;
            }
            int k = mValues[j].length();
            if (k > i)
            {
                i = k;
            }
        } while (true);
        return i;
    }

    (int i, String as[])
    {
        mField = i;
        mValues = as;
    }
}
