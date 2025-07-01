// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat

static class mDaylight
    implements mDaylight
{

    private final String mDaylight;
    private final Locale mLocale;
    private final String mStandard;
    private final int mStyle;
    private final TimeZone mTimeZone;
    private final boolean mTimeZoneForced;

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        if (mTimeZoneForced)
        {
            if (mTimeZone.useDaylightTime() && calendar.get(16) != 0)
            {
                stringbuffer.append(mDaylight);
                return;
            } else
            {
                stringbuffer.append(mStandard);
                return;
            }
        }
        TimeZone timezone = calendar.getTimeZone();
        if (timezone.useDaylightTime() && calendar.get(16) != 0)
        {
            stringbuffer.append(FastDateFormat.getTimeZoneDisplay(timezone, true, mStyle, mLocale));
            return;
        } else
        {
            stringbuffer.append(FastDateFormat.getTimeZoneDisplay(timezone, false, mStyle, mLocale));
            return;
        }
    }

    public int estimateLength()
    {
        if (mTimeZoneForced)
        {
            return Math.max(mStandard.length(), mDaylight.length());
        }
        return mStyle != 0 ? 40 : 4;
    }

    (TimeZone timezone, boolean flag, Locale locale, int i)
    {
        mTimeZone = timezone;
        mTimeZoneForced = flag;
        mLocale = locale;
        mStyle = i;
        if (flag)
        {
            mStandard = FastDateFormat.getTimeZoneDisplay(timezone, false, i, locale);
            mDaylight = FastDateFormat.getTimeZoneDisplay(timezone, true, i, locale);
            return;
        } else
        {
            mStandard = null;
            mDaylight = null;
            return;
        }
    }
}
