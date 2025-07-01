// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.box.androidsdk.content.utils:
//            FastDateFormat, SdkUtils

public final class BoxDateFormat
{

    private static final FastDateFormat LOCAL_DATE_FORMAT = FastDateFormat.getInstance("yyyy-MM-dd'T'HH:mm:ssZ");
    private static final FastDateFormat LOCAL_ROUND_TO_DAY_DATE_FORMAT = FastDateFormat.getInstance("yyyy-MM-dd");
    private static final int MILLIS_PER_HOUR = 0x36ee80;
    private static final int MILLIS_PER_MINUTE = 60000;
    private static final ThreadLocal THREAD_LOCAL_HEADER_DATE_FORMAT = new ThreadLocal() {

        protected final volatile Object initialValue()
        {
            return initialValue();
        }

        protected final DateFormat initialValue()
        {
            return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
        }

    };
    private static ConcurrentHashMap mTimeZones = new ConcurrentHashMap(10);

    private BoxDateFormat()
    {
    }

    public static Date convertToDay(Date date)
    {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("PST"));
        calendar.setTime(date);
        return parseRoundToDay(formatRoundToDay(calendar.getTime()));
    }

    public static String format(Date date)
    {
        date = LOCAL_DATE_FORMAT.format(date);
        return (new StringBuilder()).append(date.substring(0, 22)).append(":").append(date.substring(22)).toString();
    }

    public static String formatRoundToDay(Date date)
    {
        return LOCAL_ROUND_TO_DAY_DATE_FORMAT.format(date);
    }

    public static Date[] getTimeRangeDates(String s)
    {
        if (SdkUtils.isEmptyString(s))
        {
            return null;
        }
        String as[] = s.split(",");
        s = new Date[2];
        try
        {
            s[0] = parse(as[0]);
        }
        catch (ParseException parseexception1) { }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception1) { }
        try
        {
            s[1] = parse(as[1]);
        }
        catch (ParseException parseexception)
        {
            return s;
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
        {
            return s;
        }
        return s;
    }

    public static String getTimeRangeString(Date date, Date date1)
    {
        if (date == null && date1 == null)
        {
            return null;
        }
        StringBuilder stringbuilder = new StringBuilder();
        if (date != null)
        {
            stringbuilder.append(format(date));
        }
        stringbuilder.append(",");
        if (date1 != null)
        {
            stringbuilder.append(format(date1));
        }
        return stringbuilder.toString();
    }

    private static TimeZone getTimeZone(String s)
    {
        Object obj = (TimeZone)mTimeZones.get(s);
        if (obj != null)
        {
            return ((TimeZone) (obj));
        }
        Integer integer;
        int i;
        if (s.charAt(0) == '+')
        {
            i = 1;
        } else
        {
            i = 0;
        }
        obj = Integer.valueOf(Integer.parseInt(s.substring(i, 3)));
        integer = Integer.valueOf(Integer.parseInt(s.substring(4)));
        i = ((Integer) (obj)).intValue() * 0x36ee80;
        if (((Integer) (obj)).intValue() < 0)
        {
            i -= integer.intValue() * 60000;
        } else
        {
            i = integer.intValue() * 60000 + i;
        }
        obj = new SimpleTimeZone(i, s);
        mTimeZones.put(s, obj);
        return ((TimeZone) (obj));
    }

    public static Date parse(String s)
    {
        int i = Integer.parseInt(s.substring(0, 4));
        int j = Integer.parseInt(s.substring(5, 7));
        int k = Integer.parseInt(s.substring(8, 10));
        int l = Integer.parseInt(s.substring(11, 13));
        int i1 = Integer.parseInt(s.substring(14, 16));
        int j1 = Integer.parseInt(s.substring(17, 19));
        s = GregorianCalendar.getInstance(getTimeZone(s.substring(19)));
        s.set(14, 0);
        s.set(Integer.valueOf(i).intValue(), Integer.valueOf(j - 1).intValue(), Integer.valueOf(k).intValue(), Integer.valueOf(l).intValue(), Integer.valueOf(i1).intValue(), Integer.valueOf(j1).intValue());
        return s.getTime();
    }

    public static Date parseHeaderDate(String s)
    {
        return ((DateFormat)THREAD_LOCAL_HEADER_DATE_FORMAT.get()).parse(s);
    }

    public static Date parseRoundToDay(String s)
    {
        int i = Integer.parseInt(s.substring(0, 4));
        int j = Integer.parseInt(s.substring(5, 7));
        int k = Integer.parseInt(s.substring(8, 10));
        s = GregorianCalendar.getInstance();
        s.set(Integer.valueOf(i).intValue(), Integer.valueOf(j - 1).intValue(), Integer.valueOf(k).intValue());
        return s.getTime();
    }

}
