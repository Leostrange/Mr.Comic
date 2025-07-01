// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Calendar;

// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat

static class mRule
    implements mRule
{

    private final ateLength mRule;

    public void appendTo(StringBuffer stringbuffer, int i)
    {
        mRule.dTo(stringbuffer, i);
    }

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        int j = calendar.get(10);
        int i = j;
        if (j == 0)
        {
            i = calendar.getLeastMaximum(10) + 1;
        }
        mRule.dTo(stringbuffer, i);
    }

    public int estimateLength()
    {
        return mRule.ateLength();
    }

    ( )
    {
        mRule = ;
    }
}
