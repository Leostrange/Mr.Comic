// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Calendar;

// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat

static class mSize
    implements mSize
{

    private final int mField;
    private final int mSize;

    public final void appendTo(StringBuffer stringbuffer, int i)
    {
        if (i < 100)
        {
            int j = mSize;
            do
            {
                j--;
                if (j >= 2)
                {
                    stringbuffer.append('0');
                } else
                {
                    stringbuffer.append((char)(i / 10 + 48));
                    stringbuffer.append((char)(i % 10 + 48));
                    return;
                }
            } while (true);
        }
        int k;
        int l;
        if (i < 1000)
        {
            k = 3;
        } else
        {
            if (i < 0)
            {
                throw new IllegalArgumentException((new StringBuilder("Negative values should not be possible")).append(i).toString());
            }
            k = Integer.toString(i).length();
        }
        l = mSize;
        do
        {
            l--;
            if (l >= k)
            {
                stringbuffer.append('0');
            } else
            {
                stringbuffer.append(Integer.toString(i));
                return;
            }
        } while (true);
    }

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        appendTo(stringbuffer, calendar.get(mField));
    }

    public int estimateLength()
    {
        return 4;
    }

    (int i, int j)
    {
        if (j < 3)
        {
            throw new IllegalArgumentException();
        } else
        {
            mField = i;
            mSize = j;
            return;
        }
    }
}
