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

public class FastDateFormat extends Format {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final Map cDateInstanceCache = new HashMap(7);
    private static final Map cDateTimeInstanceCache = new HashMap(7);
    private static String cDefaultPattern = null;
    private static final Map cInstanceCache = new HashMap(7);
    private static final Map cTimeInstanceCache = new HashMap(7);
    private static final Map cTimeZoneDisplayCache = new HashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private final boolean mLocaleForced;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;
    private final boolean mTimeZoneForced;

    static class CharacterLiteral implements Rule {
        private final char mValue;

        CharacterLiteral(char c) {
            this.mValue = c;
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }

        public int estimateLength() {
            return 1;
        }
    }

    interface NumberRule extends Rule {
        void appendTo(StringBuffer stringBuffer, int i);
    }

    static class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        PaddedNumberField(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i;
            this.mSize = i2;
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            int length;
            if (i < 100) {
                int i2 = this.mSize;
                while (true) {
                    i2--;
                    if (i2 >= 2) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append((char) ((i / 10) + 48));
                        stringBuffer.append((char) ((i % 10) + 48));
                        return;
                    }
                }
            } else {
                if (i < 1000) {
                    length = 3;
                } else if (i < 0) {
                    throw new IllegalArgumentException("Negative values should not be possible" + i);
                } else {
                    length = Integer.toString(i).length();
                }
                int i3 = this.mSize;
                while (true) {
                    i3--;
                    if (i3 >= length) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append(Integer.toString(i));
                        return;
                    }
                }
            }
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        public int estimateLength() {
            return 4;
        }
    }

    static class Pair {
        private final Object mObj1;
        private final Object mObj2;

        public Pair(Object obj, Object obj2) {
            this.mObj1 = obj;
            this.mObj2 = obj2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pair)) {
                return false;
            }
            Pair pair = (Pair) obj;
            if (this.mObj1 != null ? this.mObj1.equals(pair.mObj1) : pair.mObj1 == null) {
                if (this.mObj2 == null) {
                    if (pair.mObj2 == null) {
                        return true;
                    }
                } else if (this.mObj2.equals(pair.mObj2)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.mObj1 == null ? 0 : this.mObj1.hashCode();
            if (this.mObj2 != null) {
                i = this.mObj2.hashCode();
            }
            return hashCode + i;
        }

        public String toString() {
            return "[" + this.mObj1 + ':' + this.mObj2 + ']';
        }
    }

    interface Rule {
        void appendTo(StringBuffer stringBuffer, Calendar calendar);

        int estimateLength();
    }

    static class StringLiteral implements Rule {
        private final String mValue;

        StringLiteral(String str) {
            this.mValue = str;
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }

        public int estimateLength() {
            return this.mValue.length();
        }
    }

    static class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        TextField(int i, String[] strArr) {
            this.mField = i;
            this.mValues = strArr;
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValues[calendar.get(this.mField)]);
        }

        public int estimateLength() {
            int i = 0;
            int length = this.mValues.length;
            while (true) {
                int i2 = length - 1;
                if (i2 < 0) {
                    return i;
                }
                int length2 = this.mValues[i2].length();
                if (length2 <= i) {
                    length2 = i;
                }
                i = length2;
                length = i2;
            }
        }
    }

    static class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        TimeZoneDisplayKey(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.mTimeZone = timeZone;
            this.mStyle = z ? i | Integer.MIN_VALUE : i;
            this.mLocale = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeZoneDisplayKey)) {
                return false;
            }
            TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
            return this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale);
        }

        public int hashCode() {
            return (this.mStyle * 31) + this.mLocale.hashCode();
        }
    }

    static class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;
        private final TimeZone mTimeZone;
        private final boolean mTimeZoneForced;

        TimeZoneNameRule(TimeZone timeZone, boolean z, Locale locale, int i) {
            this.mTimeZone = timeZone;
            this.mTimeZoneForced = z;
            this.mLocale = locale;
            this.mStyle = i;
            if (z) {
                this.mStandard = FastDateFormat.getTimeZoneDisplay(timeZone, false, i, locale);
                this.mDaylight = FastDateFormat.getTimeZoneDisplay(timeZone, true, i, locale);
                return;
            }
            this.mStandard = null;
            this.mDaylight = null;
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            if (!this.mTimeZoneForced) {
                TimeZone timeZone = calendar.getTimeZone();
                if (!timeZone.useDaylightTime() || calendar.get(16) == 0) {
                    stringBuffer.append(FastDateFormat.getTimeZoneDisplay(timeZone, false, this.mStyle, this.mLocale));
                } else {
                    stringBuffer.append(FastDateFormat.getTimeZoneDisplay(timeZone, true, this.mStyle, this.mLocale));
                }
            } else if (!this.mTimeZone.useDaylightTime() || calendar.get(16) == 0) {
                stringBuffer.append(this.mStandard);
            } else {
                stringBuffer.append(this.mDaylight);
            }
        }

        public int estimateLength() {
            return this.mTimeZoneForced ? Math.max(this.mStandard.length(), this.mDaylight.length()) : this.mStyle == 0 ? 4 : 40;
        }
    }

    static class TimeZoneNumberRule implements Rule {
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        TimeZoneNumberRule(boolean z) {
            this.mColon = z;
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append('-');
                i = -i;
            } else {
                stringBuffer.append('+');
            }
            int i2 = i / 3600000;
            stringBuffer.append((char) ((i2 / 10) + 48));
            stringBuffer.append((char) ((i2 % 10) + 48));
            if (this.mColon) {
                stringBuffer.append(':');
            }
            int i3 = (i / 60000) - (i2 * 60);
            stringBuffer.append((char) ((i3 / 10) + 48));
            stringBuffer.append((char) ((i3 % 10) + 48));
        }

        public int estimateLength() {
            return 5;
        }
    }

    static class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(10);
            if (i == 0) {
                i = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(stringBuffer, i);
        }

        public int estimateLength() {
            return this.mRule.estimateLength();
        }
    }

    static class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(11);
            if (i == 0) {
                i = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(stringBuffer, i);
        }

        public int estimateLength() {
            return this.mRule.estimateLength();
        }
    }

    static class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        TwoDigitMonthField() {
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        public int estimateLength() {
            return 2;
        }
    }

    static class TwoDigitNumberField implements NumberRule {
        private final int mField;

        TwoDigitNumberField(int i) {
            this.mField = i;
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
                return;
            }
            stringBuffer.append(Integer.toString(i));
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        public int estimateLength() {
            return 2;
        }
    }

    static class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        TwoDigitYearField() {
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, Integer.valueOf(calendar.get(1)).intValue());
        }

        public int estimateLength() {
            return 2;
        }
    }

    static class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        UnpaddedMonthField() {
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
                return;
            }
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        public int estimateLength() {
            return 2;
        }
    }

    static class UnpaddedNumberField implements NumberRule {
        private final int mField;

        UnpaddedNumberField(int i) {
            this.mField = i;
        }

        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else if (i < 100) {
                stringBuffer.append((char) ((i / 10) + 48));
                stringBuffer.append((char) ((i % 10) + 48));
            } else {
                stringBuffer.append(Integer.toString(i));
            }
        }

        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        public int estimateLength() {
            return 4;
        }
    }

    protected FastDateFormat(String str, TimeZone timeZone, Locale locale) {
        boolean z = true;
        if (str == null) {
            throw new IllegalArgumentException("The pattern must not be null");
        }
        this.mPattern = str;
        this.mTimeZoneForced = timeZone != null;
        this.mTimeZone = timeZone == null ? TimeZone.getDefault() : timeZone;
        this.mLocaleForced = locale == null ? false : z;
        this.mLocale = locale == null ? Locale.getDefault() : locale;
    }

    public static FastDateFormat getDateInstance(int i) {
        return getDateInstance(i, (TimeZone) null, (Locale) null);
    }

    public static FastDateFormat getDateInstance(int i, Locale locale) {
        return getDateInstance(i, (TimeZone) null, locale);
    }

    public static FastDateFormat getDateInstance(int i, TimeZone timeZone) {
        return getDateInstance(i, timeZone, (Locale) null);
    }

    public static synchronized FastDateFormat getDateInstance(int i, TimeZone timeZone, Locale locale) {
        FastDateFormat fastDateFormat;
        synchronized (FastDateFormat.class) {
            Integer num = new Integer(i);
            Object pair = timeZone != null ? new Pair(num, timeZone) : num;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            Pair pair2 = new Pair(pair, locale);
            fastDateFormat = (FastDateFormat) cDateInstanceCache.get(pair2);
            if (fastDateFormat == null) {
                try {
                    fastDateFormat = getInstance(((SimpleDateFormat) DateFormat.getDateInstance(i, locale)).toPattern(), timeZone, locale);
                    cDateInstanceCache.put(pair2, fastDateFormat);
                } catch (ClassCastException e) {
                    throw new IllegalArgumentException("No date pattern for locale: " + locale);
                }
            }
        }
        return fastDateFormat;
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2) {
        return getDateTimeInstance(i, i2, (TimeZone) null, (Locale) null);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2, Locale locale) {
        return getDateTimeInstance(i, i2, (TimeZone) null, locale);
    }

    public static FastDateFormat getDateTimeInstance(int i, int i2, TimeZone timeZone) {
        return getDateTimeInstance(i, i2, timeZone, (Locale) null);
    }

    public static synchronized FastDateFormat getDateTimeInstance(int i, int i2, TimeZone timeZone, Locale locale) {
        FastDateFormat fastDateFormat;
        synchronized (FastDateFormat.class) {
            Pair pair = new Pair(new Integer(i), new Integer(i2));
            Pair pair2 = timeZone != null ? new Pair(pair, timeZone) : pair;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            Pair pair3 = new Pair(pair2, locale);
            fastDateFormat = (FastDateFormat) cDateTimeInstanceCache.get(pair3);
            if (fastDateFormat == null) {
                try {
                    fastDateFormat = getInstance(((SimpleDateFormat) DateFormat.getDateTimeInstance(i, i2, locale)).toPattern(), timeZone, locale);
                    cDateTimeInstanceCache.put(pair3, fastDateFormat);
                } catch (ClassCastException e) {
                    throw new IllegalArgumentException("No date time pattern for locale: " + locale);
                }
            }
        }
        return fastDateFormat;
    }

    private static synchronized String getDefaultPattern() {
        String str;
        synchronized (FastDateFormat.class) {
            if (cDefaultPattern == null) {
                cDefaultPattern = new SimpleDateFormat().toPattern();
            }
            str = cDefaultPattern;
        }
        return str;
    }

    public static FastDateFormat getInstance() {
        return getInstance(getDefaultPattern(), (TimeZone) null, (Locale) null);
    }

    public static FastDateFormat getInstance(String str) {
        return getInstance(str, (TimeZone) null, (Locale) null);
    }

    public static FastDateFormat getInstance(String str, Locale locale) {
        return getInstance(str, (TimeZone) null, locale);
    }

    public static FastDateFormat getInstance(String str, TimeZone timeZone) {
        return getInstance(str, timeZone, (Locale) null);
    }

    public static synchronized FastDateFormat getInstance(String str, TimeZone timeZone, Locale locale) {
        FastDateFormat fastDateFormat;
        synchronized (FastDateFormat.class) {
            FastDateFormat fastDateFormat2 = new FastDateFormat(str, timeZone, locale);
            fastDateFormat = (FastDateFormat) cInstanceCache.get(fastDateFormat2);
            if (fastDateFormat == null) {
                fastDateFormat2.init();
                cInstanceCache.put(fastDateFormat2, fastDateFormat2);
                fastDateFormat = fastDateFormat2;
            }
        }
        return fastDateFormat;
    }

    public static FastDateFormat getTimeInstance(int i) {
        return getTimeInstance(i, (TimeZone) null, (Locale) null);
    }

    public static FastDateFormat getTimeInstance(int i, Locale locale) {
        return getTimeInstance(i, (TimeZone) null, locale);
    }

    public static FastDateFormat getTimeInstance(int i, TimeZone timeZone) {
        return getTimeInstance(i, timeZone, (Locale) null);
    }

    public static synchronized FastDateFormat getTimeInstance(int i, TimeZone timeZone, Locale locale) {
        FastDateFormat fastDateFormat;
        synchronized (FastDateFormat.class) {
            Integer num = new Integer(i);
            Pair pair = timeZone != null ? new Pair(num, timeZone) : num;
            if (locale != null) {
                pair = new Pair(pair, locale);
            }
            fastDateFormat = (FastDateFormat) cTimeInstanceCache.get(pair);
            if (fastDateFormat == null) {
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                try {
                    fastDateFormat = getInstance(((SimpleDateFormat) DateFormat.getTimeInstance(i, locale)).toPattern(), timeZone, locale);
                    cTimeInstanceCache.put(pair, fastDateFormat);
                } catch (ClassCastException e) {
                    throw new IllegalArgumentException("No date pattern for locale: " + locale);
                }
            }
        }
        return fastDateFormat;
    }

    static synchronized String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        String str;
        synchronized (FastDateFormat.class) {
            TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z, i, locale);
            str = (String) cTimeZoneDisplayCache.get(timeZoneDisplayKey);
            if (str == null) {
                str = timeZone.getDisplayName(z, i, locale);
                cTimeZoneDisplayCache.put(timeZoneDisplayKey, str);
            }
        }
        return str;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        init();
    }

    /* access modifiers changed from: protected */
    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        Rule[] ruleArr = this.mRules;
        int length = this.mRules.length;
        for (int i = 0; i < length; i++) {
            ruleArr[i].appendTo(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDateFormat)) {
            return false;
        }
        FastDateFormat fastDateFormat = (FastDateFormat) obj;
        if (this.mPattern != fastDateFormat.mPattern && !this.mPattern.equals(fastDateFormat.mPattern)) {
            return false;
        }
        if (this.mTimeZone == fastDateFormat.mTimeZone || this.mTimeZone.equals(fastDateFormat.mTimeZone)) {
            return (this.mLocale == fastDateFormat.mLocale || this.mLocale.equals(fastDateFormat.mLocale)) && this.mTimeZoneForced == fastDateFormat.mTimeZoneForced && this.mLocaleForced == fastDateFormat.mLocaleForced;
        }
        return false;
    }

    public String format(long j) {
        return format(new Date(j));
    }

    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    public String format(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.mTimeZone);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return format(new Date(j), stringBuffer);
    }

    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        throw new IllegalArgumentException("Unknown class: " + (obj == null ? "<null>" : obj.getClass().getName()));
    }

    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        Calendar calendar2;
        if (this.mTimeZoneForced) {
            calendar.getTime();
            calendar2 = (Calendar) calendar.clone();
            calendar2.setTimeZone(this.mTimeZone);
        } else {
            calendar2 = calendar;
        }
        return applyRules(calendar2, stringBuffer);
    }

    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(this.mTimeZone);
        gregorianCalendar.setTime(date);
        return applyRules(gregorianCalendar, stringBuffer);
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    public String getPattern() {
        return this.mPattern;
    }

    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public boolean getTimeZoneOverridesCalendar() {
        return this.mTimeZoneForced;
    }

    public int hashCode() {
        int i = 1;
        int hashCode = (this.mTimeZoneForced ? 1 : 0) + this.mTimeZone.hashCode() + this.mPattern.hashCode() + 0 + this.mLocale.hashCode();
        if (!this.mLocaleForced) {
            i = 0;
        }
        return hashCode + i;
    }

    /* access modifiers changed from: protected */
    public void init() {
        List parsePattern = parsePattern();
        this.mRules = (Rule[]) parsePattern.toArray(new Rule[parsePattern.size()]);
        int i = 0;
        int length = this.mRules.length;
        while (true) {
            length--;
            if (length >= 0) {
                i += this.mRules[length].estimateLength();
            } else {
                this.mMaxLengthEstimate = i;
                return;
            }
        }
    }

    public Object parseObject(String str, ParsePosition parsePosition) {
        parsePosition.setIndex(0);
        parsePosition.setErrorIndex(0);
        return null;
    }

    /* access modifiers changed from: protected */
    public List parsePattern() {
        Object stringLiteral;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int[] iArr = new int[1];
        int i = 0;
        while (i < length) {
            iArr[0] = i;
            String parseToken = parseToken(this.mPattern, iArr);
            int i2 = iArr[0];
            int length2 = parseToken.length();
            if (length2 == 0) {
                return arrayList;
            }
            switch (parseToken.charAt(0)) {
                case '\'':
                    String substring = parseToken.substring(1);
                    if (substring.length() != 1) {
                        stringLiteral = new StringLiteral(substring);
                        break;
                    } else {
                        stringLiteral = new CharacterLiteral(substring.charAt(0));
                        break;
                    }
                case 'D':
                    stringLiteral = selectNumberRule(6, length2);
                    break;
                case 'E':
                    stringLiteral = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                    break;
                case 'F':
                    stringLiteral = selectNumberRule(8, length2);
                    break;
                case 'G':
                    stringLiteral = new TextField(0, eras);
                    break;
                case 'H':
                    stringLiteral = selectNumberRule(11, length2);
                    break;
                case 'K':
                    stringLiteral = selectNumberRule(10, length2);
                    break;
                case 'M':
                    if (length2 < 4) {
                        if (length2 != 3) {
                            if (length2 != 2) {
                                stringLiteral = UnpaddedMonthField.INSTANCE;
                                break;
                            } else {
                                stringLiteral = TwoDigitMonthField.INSTANCE;
                                break;
                            }
                        } else {
                            stringLiteral = new TextField(2, shortMonths);
                            break;
                        }
                    } else {
                        stringLiteral = new TextField(2, months);
                        break;
                    }
                case 'S':
                    stringLiteral = selectNumberRule(14, length2);
                    break;
                case 'W':
                    stringLiteral = selectNumberRule(4, length2);
                    break;
                case 'Z':
                    if (length2 != 1) {
                        stringLiteral = TimeZoneNumberRule.INSTANCE_COLON;
                        break;
                    } else {
                        stringLiteral = TimeZoneNumberRule.INSTANCE_NO_COLON;
                        break;
                    }
                case 'a':
                    stringLiteral = new TextField(9, amPmStrings);
                    break;
                case 'd':
                    stringLiteral = selectNumberRule(5, length2);
                    break;
                case 'h':
                    stringLiteral = new TwelveHourField(selectNumberRule(10, length2));
                    break;
                case 'k':
                    stringLiteral = new TwentyFourHourField(selectNumberRule(11, length2));
                    break;
                case 'm':
                    stringLiteral = selectNumberRule(12, length2);
                    break;
                case 's':
                    stringLiteral = selectNumberRule(13, length2);
                    break;
                case 'w':
                    stringLiteral = selectNumberRule(3, length2);
                    break;
                case 'y':
                    if (length2 < 4) {
                        stringLiteral = TwoDigitYearField.INSTANCE;
                        break;
                    } else {
                        stringLiteral = selectNumberRule(1, length2);
                        break;
                    }
                case 'z':
                    if (length2 < 4) {
                        stringLiteral = new TimeZoneNameRule(this.mTimeZone, this.mTimeZoneForced, this.mLocale, 0);
                        break;
                    } else {
                        stringLiteral = new TimeZoneNameRule(this.mTimeZone, this.mTimeZoneForced, this.mLocale, 1);
                        break;
                    }
                default:
                    throw new IllegalArgumentException("Illegal pattern component: " + parseToken);
            }
            arrayList.add(stringLiteral);
            i = i2 + 1;
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0069, code lost:
        r2 = r2 - 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String parseToken(java.lang.String r12, int[] r13) {
        /*
            r11 = this;
            r10 = 97
            r9 = 90
            r8 = 65
            r7 = 39
            r1 = 0
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            r2 = r13[r1]
            int r4 = r12.length()
            char r0 = r12.charAt(r2)
            if (r0 < r8) goto L_0x001c
            if (r0 <= r9) goto L_0x0022
        L_0x001c:
            if (r0 < r10) goto L_0x0037
            r5 = 122(0x7a, float:1.71E-43)
            if (r0 > r5) goto L_0x0037
        L_0x0022:
            r3.append(r0)
        L_0x0025:
            int r5 = r2 + 1
            if (r5 >= r4) goto L_0x006b
            int r5 = r2 + 1
            char r5 = r12.charAt(r5)
            if (r5 != r0) goto L_0x006b
            r3.append(r0)
            int r2 = r2 + 1
            goto L_0x0025
        L_0x0037:
            r3.append(r7)
            r0 = r1
        L_0x003b:
            if (r2 >= r4) goto L_0x006b
            char r5 = r12.charAt(r2)
            if (r5 != r7) goto L_0x005d
            int r6 = r2 + 1
            if (r6 >= r4) goto L_0x0057
            int r6 = r2 + 1
            char r6 = r12.charAt(r6)
            if (r6 != r7) goto L_0x0057
            int r2 = r2 + 1
            r3.append(r5)
        L_0x0054:
            int r2 = r2 + 1
            goto L_0x003b
        L_0x0057:
            if (r0 != 0) goto L_0x005b
            r0 = 1
            goto L_0x0054
        L_0x005b:
            r0 = r1
            goto L_0x0054
        L_0x005d:
            if (r0 != 0) goto L_0x0072
            if (r5 < r8) goto L_0x0063
            if (r5 <= r9) goto L_0x0069
        L_0x0063:
            if (r5 < r10) goto L_0x0072
            r6 = 122(0x7a, float:1.71E-43)
            if (r5 > r6) goto L_0x0072
        L_0x0069:
            int r2 = r2 + -1
        L_0x006b:
            r13[r1] = r2
            java.lang.String r0 = r3.toString()
            return r0
        L_0x0072:
            r3.append(r5)
            goto L_0x0054
        */
        throw new UnsupportedOperationException("Method not decompiled: com.box.androidsdk.content.utils.FastDateFormat.parseToken(java.lang.String, int[]):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public NumberRule selectNumberRule(int i, int i2) {
        switch (i2) {
            case 1:
                return new UnpaddedNumberField(i);
            case 2:
                return new TwoDigitNumberField(i);
            default:
                return new PaddedNumberField(i, i2);
        }
    }

    public String toString() {
        return "FastDateFormat[" + this.mPattern + "]";
    }
}
