// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.io.ObjectInputStream;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class FastDateFormat extends Format
{
    static class CharacterLiteral
        implements Rule
    {

        private final char mValue;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            stringbuffer.append(mValue);
        }

        public int estimateLength()
        {
            return 1;
        }

        CharacterLiteral(char c)
        {
            mValue = c;
        }
    }

    static interface NumberRule
        extends Rule
    {

        public abstract void appendTo(StringBuffer stringbuffer, int i);
    }

    static class PaddedNumberField
        implements NumberRule
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

        PaddedNumberField(int i, int j)
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

    static class Pair
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
                if (!(obj instanceof Pair))
                {
                    return false;
                }
                obj = (Pair)obj;
                if (mObj1 != null ? mObj1.equals(((Pair) (obj)).mObj1) : ((Pair) (obj)).mObj1 == null)
                {
                    break label0;
                } else
                {
                    break; /* Loop/switch isn't completed */
                }
            }
            if (mObj2 != null) goto _L4; else goto _L3
_L3:
            if (((Pair) (obj)).mObj2 == null) goto _L1; else goto _L5
_L5:
            return false;
_L4:
            if (mObj2.equals(((Pair) (obj)).mObj2))
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

        public Pair(Object obj, Object obj1)
        {
            mObj1 = obj;
            mObj2 = obj1;
        }
    }

    static interface Rule
    {

        public abstract void appendTo(StringBuffer stringbuffer, Calendar calendar);

        public abstract int estimateLength();
    }

    static class StringLiteral
        implements Rule
    {

        private final String mValue;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            stringbuffer.append(mValue);
        }

        public int estimateLength()
        {
            return mValue.length();
        }

        StringLiteral(String s)
        {
            mValue = s;
        }
    }

    static class TextField
        implements Rule
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

        TextField(int i, String as[])
        {
            mField = i;
            mValues = as;
        }
    }

    static class TimeZoneDisplayKey
    {

        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj instanceof TimeZoneDisplayKey)
                {
                    if (!mTimeZone.equals(((TimeZoneDisplayKey) (obj = (TimeZoneDisplayKey)obj)).mTimeZone) || mStyle != ((TimeZoneDisplayKey) (obj)).mStyle || !mLocale.equals(((TimeZoneDisplayKey) (obj)).mLocale))
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return mStyle * 31 + mLocale.hashCode();
        }

        TimeZoneDisplayKey(TimeZone timezone, boolean flag, int i, Locale locale)
        {
            mTimeZone = timezone;
            int j = i;
            if (flag)
            {
                j = i | 0x80000000;
            }
            mStyle = j;
            mLocale = locale;
        }
    }

    static class TimeZoneNameRule
        implements Rule
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

        TimeZoneNameRule(TimeZone timezone, boolean flag, Locale locale, int i)
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

    static class TimeZoneNumberRule
        implements Rule
    {

        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int i = calendar.get(15) + calendar.get(16);
            int j;
            if (i < 0)
            {
                stringbuffer.append('-');
                i = -i;
            } else
            {
                stringbuffer.append('+');
            }
            j = i / 0x36ee80;
            stringbuffer.append((char)(j / 10 + 48));
            stringbuffer.append((char)(j % 10 + 48));
            if (mColon)
            {
                stringbuffer.append(':');
            }
            i = i / 60000 - j * 60;
            stringbuffer.append((char)(i / 10 + 48));
            stringbuffer.append((char)(i % 10 + 48));
        }

        public int estimateLength()
        {
            return 5;
        }


        TimeZoneNumberRule(boolean flag)
        {
            mColon = flag;
        }
    }

    static class TwelveHourField
        implements NumberRule
    {

        private final NumberRule mRule;

        public void appendTo(StringBuffer stringbuffer, int i)
        {
            mRule.appendTo(stringbuffer, i);
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int j = calendar.get(10);
            int i = j;
            if (j == 0)
            {
                i = calendar.getLeastMaximum(10) + 1;
            }
            mRule.appendTo(stringbuffer, i);
        }

        public int estimateLength()
        {
            return mRule.estimateLength();
        }

        TwelveHourField(NumberRule numberrule)
        {
            mRule = numberrule;
        }
    }

    static class TwentyFourHourField
        implements NumberRule
    {

        private final NumberRule mRule;

        public void appendTo(StringBuffer stringbuffer, int i)
        {
            mRule.appendTo(stringbuffer, i);
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            int j = calendar.get(11);
            int i = j;
            if (j == 0)
            {
                i = calendar.getMaximum(11) + 1;
            }
            mRule.appendTo(stringbuffer, i);
        }

        public int estimateLength()
        {
            return mRule.estimateLength();
        }

        TwentyFourHourField(NumberRule numberrule)
        {
            mRule = numberrule;
        }
    }

    static class TwoDigitMonthField
        implements NumberRule
    {

        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            stringbuffer.append((char)(i / 10 + 48));
            stringbuffer.append((char)(i % 10 + 48));
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(2) + 1);
        }

        public int estimateLength()
        {
            return 2;
        }


        TwoDigitMonthField()
        {
        }
    }

    static class TwoDigitNumberField
        implements NumberRule
    {

        private final int mField;

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 100)
            {
                stringbuffer.append((char)(i / 10 + 48));
                stringbuffer.append((char)(i % 10 + 48));
                return;
            } else
            {
                stringbuffer.append(Integer.toString(i));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(mField));
        }

        public int estimateLength()
        {
            return 2;
        }

        TwoDigitNumberField(int i)
        {
            mField = i;
        }
    }

    static class TwoDigitYearField
        implements NumberRule
    {

        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            stringbuffer.append((char)(i / 10 + 48));
            stringbuffer.append((char)(i % 10 + 48));
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, Integer.valueOf(calendar.get(1)).intValue());
        }

        public int estimateLength()
        {
            return 2;
        }


        TwoDigitYearField()
        {
        }
    }

    static class UnpaddedMonthField
        implements NumberRule
    {

        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 10)
            {
                stringbuffer.append((char)(i + 48));
                return;
            } else
            {
                stringbuffer.append((char)(i / 10 + 48));
                stringbuffer.append((char)(i % 10 + 48));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(2) + 1);
        }

        public int estimateLength()
        {
            return 2;
        }


        UnpaddedMonthField()
        {
        }
    }

    static class UnpaddedNumberField
        implements NumberRule
    {

        private final int mField;

        public final void appendTo(StringBuffer stringbuffer, int i)
        {
            if (i < 10)
            {
                stringbuffer.append((char)(i + 48));
                return;
            }
            if (i < 100)
            {
                stringbuffer.append((char)(i / 10 + 48));
                stringbuffer.append((char)(i % 10 + 48));
                return;
            } else
            {
                stringbuffer.append(Integer.toString(i));
                return;
            }
        }

        public void appendTo(StringBuffer stringbuffer, Calendar calendar)
        {
            appendTo(stringbuffer, calendar.get(mField));
        }

        public int estimateLength()
        {
            return 4;
        }

        UnpaddedNumberField(int i)
        {
            mField = i;
        }
    }


    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final Map cDateInstanceCache = new HashMap(7);
    private static final Map cDateTimeInstanceCache = new HashMap(7);
    private static String cDefaultPattern;
    private static final Map cInstanceCache = new HashMap(7);
    private static final Map cTimeInstanceCache = new HashMap(7);
    private static final Map cTimeZoneDisplayCache = new HashMap(7);
    private static final long serialVersionUID = 1L;
    private final Locale mLocale;
    private final boolean mLocaleForced;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule mRules[];
    private final TimeZone mTimeZone;
    private final boolean mTimeZoneForced;

    protected FastDateFormat(String s, TimeZone timezone, Locale locale)
    {
        boolean flag1 = true;
        super();
        if (s == null)
        {
            throw new IllegalArgumentException("The pattern must not be null");
        }
        mPattern = s;
        boolean flag;
        if (timezone != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mTimeZoneForced = flag;
        s = timezone;
        if (timezone == null)
        {
            s = TimeZone.getDefault();
        }
        mTimeZone = s;
        if (locale != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        mLocaleForced = flag;
        s = locale;
        if (locale == null)
        {
            s = Locale.getDefault();
        }
        mLocale = s;
    }

    public static FastDateFormat getDateInstance(int i)
    {
        return getDateInstance(i, null, null);
    }

    public static FastDateFormat getDateInstance(int i, Locale locale)
    {
        return getDateInstance(i, null, locale);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timezone)
    {
        return getDateInstance(i, timezone, null);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timezone, Locale locale)
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        Object obj = new Integer(i);
        if (timezone == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        obj = new Pair(obj, timezone);
        Locale locale1;
        locale1 = locale;
        if (locale != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        locale1 = Locale.getDefault();
        Pair pair;
        pair = new Pair(obj, locale1);
        obj = (FastDateFormat)cDateInstanceCache.get(pair);
        locale = ((Locale) (obj));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        locale = getInstance(((SimpleDateFormat)DateFormat.getDateInstance(i, locale1)).toPattern(), timezone, locale1);
        cDateInstanceCache.put(pair, locale);
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return locale;
        timezone;
        throw new IllegalArgumentException((new StringBuilder("No date pattern for locale: ")).append(locale1).toString());
        timezone;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        throw timezone;
    }

    public static FastDateFormat getDateTimeInstance(int i, int j)
    {
        return getDateTimeInstance(i, j, null, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, Locale locale)
    {
        return getDateTimeInstance(i, j, null, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, TimeZone timezone)
    {
        return getDateTimeInstance(i, j, timezone, null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int j, TimeZone timezone, Locale locale)
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        Object obj = new Pair(new Integer(i), new Integer(j));
        if (timezone == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        obj = new Pair(obj, timezone);
        Locale locale1;
        locale1 = locale;
        if (locale != null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        locale1 = Locale.getDefault();
        Pair pair;
        pair = new Pair(obj, locale1);
        obj = (FastDateFormat)cDateTimeInstanceCache.get(pair);
        locale = ((Locale) (obj));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        locale = getInstance(((SimpleDateFormat)DateFormat.getDateTimeInstance(i, j, locale1)).toPattern(), timezone, locale1);
        cDateTimeInstanceCache.put(pair, locale);
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return locale;
        timezone;
        throw new IllegalArgumentException((new StringBuilder("No date time pattern for locale: ")).append(locale1).toString());
        timezone;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        throw timezone;
    }

    private static String getDefaultPattern()
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        String s;
        if (cDefaultPattern == null)
        {
            cDefaultPattern = (new SimpleDateFormat()).toPattern();
        }
        s = cDefaultPattern;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static FastDateFormat getInstance()
    {
        return getInstance(getDefaultPattern(), null, null);
    }

    public static FastDateFormat getInstance(String s)
    {
        return getInstance(s, null, null);
    }

    public static FastDateFormat getInstance(String s, Locale locale)
    {
        return getInstance(s, null, locale);
    }

    public static FastDateFormat getInstance(String s, TimeZone timezone)
    {
        return getInstance(s, timezone, null);
    }

    public static FastDateFormat getInstance(String s, TimeZone timezone, Locale locale)
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        timezone = new FastDateFormat(s, timezone, locale);
        locale = (FastDateFormat)cInstanceCache.get(timezone);
        s = locale;
        if (locale != null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        timezone.init();
        cInstanceCache.put(timezone, timezone);
        s = timezone;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public static FastDateFormat getTimeInstance(int i)
    {
        return getTimeInstance(i, null, null);
    }

    public static FastDateFormat getTimeInstance(int i, Locale locale)
    {
        return getTimeInstance(i, null, locale);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timezone)
    {
        return getTimeInstance(i, timezone, null);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timezone, Locale locale)
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        Object obj = new Integer(i);
        if (timezone == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        obj = new Pair(obj, timezone);
        Object obj1;
        obj1 = obj;
        if (locale == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        obj1 = new Pair(obj, locale);
        FastDateFormat fastdateformat = (FastDateFormat)cTimeInstanceCache.get(obj1);
        obj = fastdateformat;
        if (fastdateformat != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        obj = locale;
        if (locale != null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        obj = Locale.getDefault();
        timezone = getInstance(((SimpleDateFormat)DateFormat.getTimeInstance(i, ((Locale) (obj)))).toPattern(), timezone, ((Locale) (obj)));
        cTimeInstanceCache.put(obj1, timezone);
        obj = timezone;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return ((FastDateFormat) (obj));
        timezone;
        throw new IllegalArgumentException((new StringBuilder("No date pattern for locale: ")).append(obj).toString());
        timezone;
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        throw timezone;
    }

    static String getTimeZoneDisplay(TimeZone timezone, boolean flag, int i, Locale locale)
    {
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorenter ;
        String s1;
        TimeZoneDisplayKey timezonedisplaykey;
        timezonedisplaykey = new TimeZoneDisplayKey(timezone, flag, i, locale);
        s1 = (String)cTimeZoneDisplayCache.get(timezonedisplaykey);
        String s;
        s = s1;
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        s = timezone.getDisplayName(flag, i, locale);
        cTimeZoneDisplayCache.put(timezonedisplaykey, s);
        com/box/androidsdk/content/utils/FastDateFormat;
        JVM INSTR monitorexit ;
        return s;
        timezone;
        throw timezone;
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        init();
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringbuffer)
    {
        Rule arule[] = mRules;
        int j = mRules.length;
        for (int i = 0; i < j; i++)
        {
            arule[i].appendTo(stringbuffer, calendar);
        }

        return stringbuffer;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof FastDateFormat)
        {
            if ((mPattern == ((FastDateFormat) (obj = (FastDateFormat)obj)).mPattern || mPattern.equals(((FastDateFormat) (obj)).mPattern)) && (mTimeZone == ((FastDateFormat) (obj)).mTimeZone || mTimeZone.equals(((FastDateFormat) (obj)).mTimeZone)) && (mLocale == ((FastDateFormat) (obj)).mLocale || mLocale.equals(((FastDateFormat) (obj)).mLocale)) && mTimeZoneForced == ((FastDateFormat) (obj)).mTimeZoneForced && mLocaleForced == ((FastDateFormat) (obj)).mLocaleForced)
            {
                return true;
            }
        }
        return false;
    }

    public String format(long l)
    {
        return format(new Date(l));
    }

    public String format(Calendar calendar)
    {
        return format(calendar, new StringBuffer(mMaxLengthEstimate)).toString();
    }

    public String format(Date date)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(mTimeZone);
        gregoriancalendar.setTime(date);
        return applyRules(gregoriancalendar, new StringBuffer(mMaxLengthEstimate)).toString();
    }

    public StringBuffer format(long l, StringBuffer stringbuffer)
    {
        return format(new Date(l), stringbuffer);
    }

    public StringBuffer format(Object obj, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        if (obj instanceof Date)
        {
            return format((Date)obj, stringbuffer);
        }
        if (obj instanceof Calendar)
        {
            return format((Calendar)obj, stringbuffer);
        }
        if (obj instanceof Long)
        {
            return format(((Long)obj).longValue(), stringbuffer);
        }
        stringbuffer = new StringBuilder("Unknown class: ");
        if (obj == null)
        {
            obj = "<null>";
        } else
        {
            obj = obj.getClass().getName();
        }
        throw new IllegalArgumentException(stringbuffer.append(((String) (obj))).toString());
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringbuffer)
    {
        if (mTimeZoneForced)
        {
            calendar.getTime();
            calendar = (Calendar)calendar.clone();
            calendar.setTimeZone(mTimeZone);
        }
        return applyRules(calendar, stringbuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(mTimeZone);
        gregoriancalendar.setTime(date);
        return applyRules(gregoriancalendar, stringbuffer);
    }

    public Locale getLocale()
    {
        return mLocale;
    }

    public int getMaxLengthEstimate()
    {
        return mMaxLengthEstimate;
    }

    public String getPattern()
    {
        return mPattern;
    }

    public TimeZone getTimeZone()
    {
        return mTimeZone;
    }

    public boolean getTimeZoneOverridesCalendar()
    {
        return mTimeZoneForced;
    }

    public int hashCode()
    {
        int j = 1;
        int k = mPattern.hashCode();
        int l = mTimeZone.hashCode();
        int i;
        int i1;
        if (mTimeZoneForced)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        i1 = mLocale.hashCode();
        if (!mLocaleForced)
        {
            j = 0;
        }
        return i + (l + (k + 0)) + i1 + j;
    }

    protected void init()
    {
        List list = parsePattern();
        mRules = (Rule[])(Rule[])list.toArray(new Rule[list.size()]);
        int i = 0;
        int j = mRules.length;
        do
        {
            j--;
            if (j >= 0)
            {
                i += mRules[j].estimateLength();
            } else
            {
                mMaxLengthEstimate = i;
                return;
            }
        } while (true);
    }

    public Object parseObject(String s, ParsePosition parseposition)
    {
        parseposition.setIndex(0);
        parseposition.setErrorIndex(0);
        return null;
    }

    protected List parsePattern()
    {
        String as[];
        String as1[];
        ArrayList arraylist;
        String as2[];
        String as3[];
        String as4[];
        String as5[];
        int ai[];
        int i;
        int j;
        DateFormatSymbols dateformatsymbols = new DateFormatSymbols(mLocale);
        arraylist = new ArrayList();
        as2 = dateformatsymbols.getEras();
        as3 = dateformatsymbols.getMonths();
        as4 = dateformatsymbols.getShortMonths();
        as = dateformatsymbols.getWeekdays();
        as1 = dateformatsymbols.getShortWeekdays();
        as5 = dateformatsymbols.getAmPmStrings();
        j = mPattern.length();
        ai = new int[1];
        i = 0;
_L23:
        Object obj;
        int k;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_739;
        }
        ai[0] = i;
        obj = parseToken(mPattern, ai);
        i = ai[0];
        k = ((String) (obj)).length();
        if (k == 0)
        {
            break MISSING_BLOCK_LABEL_739;
        }
        ((String) (obj)).charAt(0);
        JVM INSTR lookupswitch 20: default 288
    //                   39: 697
    //                   68: 531
    //                   69: 504
    //                   70: 543
    //                   71: 313
    //                   72: 456
    //                   75: 611
    //                   77: 366
    //                   83: 492
    //                   87: 566
    //                   90: 677
    //                   97: 577
    //                   100: 426
    //                   104: 437
    //                   107: 592
    //                   109: 468
    //                   115: 480
    //                   119: 555
    //                   121: 342
    //                   122: 623;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21
_L2:
        break MISSING_BLOCK_LABEL_697;
_L20:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder("Illegal pattern component: ")).append(((String) (obj))).toString());
_L6:
        obj = new TextField(0, as2);
_L24:
        arraylist.add(obj);
        i++;
        if (true) goto _L23; else goto _L22
_L22:
        if (k >= 4)
        {
            obj = selectNumberRule(1, k);
        } else
        {
            obj = TwoDigitYearField.INSTANCE;
        }
          goto _L24
_L9:
        if (k >= 4)
        {
            obj = new TextField(2, as3);
        } else
        if (k == 3)
        {
            obj = new TextField(2, as4);
        } else
        if (k == 2)
        {
            obj = TwoDigitMonthField.INSTANCE;
        } else
        {
            obj = UnpaddedMonthField.INSTANCE;
        }
          goto _L24
_L14:
        obj = selectNumberRule(5, k);
          goto _L24
_L15:
        obj = new TwelveHourField(selectNumberRule(10, k));
          goto _L24
_L7:
        obj = selectNumberRule(11, k);
          goto _L24
_L17:
        obj = selectNumberRule(12, k);
          goto _L24
_L18:
        obj = selectNumberRule(13, k);
          goto _L24
_L10:
        obj = selectNumberRule(14, k);
          goto _L24
_L4:
        if (k < 4)
        {
            obj = as1;
        } else
        {
            obj = as;
        }
        obj = new TextField(7, ((String []) (obj)));
          goto _L24
_L3:
        obj = selectNumberRule(6, k);
          goto _L24
_L5:
        obj = selectNumberRule(8, k);
          goto _L24
_L19:
        obj = selectNumberRule(3, k);
          goto _L24
_L11:
        obj = selectNumberRule(4, k);
          goto _L24
_L13:
        obj = new TextField(9, as5);
          goto _L24
_L16:
        obj = new TwentyFourHourField(selectNumberRule(11, k));
          goto _L24
_L8:
        obj = selectNumberRule(10, k);
          goto _L24
_L21:
        if (k >= 4)
        {
            obj = new TimeZoneNameRule(mTimeZone, mTimeZoneForced, mLocale, 1);
        } else
        {
            obj = new TimeZoneNameRule(mTimeZone, mTimeZoneForced, mLocale, 0);
        }
          goto _L24
_L12:
        if (k == 1)
        {
            obj = TimeZoneNumberRule.INSTANCE_NO_COLON;
        } else
        {
            obj = TimeZoneNumberRule.INSTANCE_COLON;
        }
          goto _L24
        obj = ((String) (obj)).substring(1);
        if (((String) (obj)).length() == 1)
        {
            obj = new CharacterLiteral(((String) (obj)).charAt(0));
        } else
        {
            obj = new StringLiteral(((String) (obj)));
        }
          goto _L24
        return arraylist;
    }

    protected String parseToken(String s, int ai[])
    {
        char c;
        StringBuffer stringbuffer;
        int i;
        int l;
        stringbuffer = new StringBuffer();
        i = ai[0];
        l = s.length();
        c = s.charAt(i);
        if ((c < 'A' || c > 'Z') && (c < 'a' || c > 'z')) goto _L2; else goto _L1
_L1:
        int j;
        stringbuffer.append(c);
        do
        {
            j = i;
            if (i + 1 >= l)
            {
                break;
            }
            j = i;
            if (s.charAt(i + 1) != c)
            {
                break;
            }
            stringbuffer.append(c);
            i++;
        } while (true);
          goto _L3
_L2:
        int k;
        stringbuffer.append('\'');
        k = 0;
_L7:
        j = i;
        if (i >= l) goto _L3; else goto _L4
_L4:
        c = s.charAt(i);
        if (c != '\'') goto _L6; else goto _L5
_L5:
        if (i + 1 < l && s.charAt(i + 1) == '\'')
        {
            i++;
            stringbuffer.append(c);
            j = k;
        } else
        if (k == 0)
        {
            j = 1;
        } else
        {
            j = 0;
        }
_L8:
        i++;
        k = j;
          goto _L7
_L6:
        if (k != 0 || (c < 'A' || c > 'Z') && (c < 'a' || c > 'z'))
        {
            break MISSING_BLOCK_LABEL_253;
        }
        j = i - 1;
_L3:
        ai[0] = j;
        return stringbuffer.toString();
        stringbuffer.append(c);
        j = k;
          goto _L8
    }

    protected NumberRule selectNumberRule(int i, int j)
    {
        switch (j)
        {
        default:
            return new PaddedNumberField(i, j);

        case 1: // '\001'
            return new UnpaddedNumberField(i);

        case 2: // '\002'
            return new TwoDigitNumberField(i);
        }
    }

    public String toString()
    {
        return (new StringBuilder("FastDateFormat[")).append(mPattern).append("]").toString();
    }

}
