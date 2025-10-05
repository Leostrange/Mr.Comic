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
import org.apache.http.protocol.HttpDateGenerator;

public final class BoxDateFormat {
    private static final FastDateFormat LOCAL_DATE_FORMAT = FastDateFormat.getInstance("yyyy-MM-dd'T'HH:mm:ssZ");
    private static final FastDateFormat LOCAL_ROUND_TO_DAY_DATE_FORMAT = FastDateFormat.getInstance("yyyy-MM-dd");
    private static final int MILLIS_PER_HOUR = 3600000;
    private static final int MILLIS_PER_MINUTE = 60000;
    private static final ThreadLocal<DateFormat> THREAD_LOCAL_HEADER_DATE_FORMAT = new ThreadLocal<DateFormat>() {
        /* access modifiers changed from: protected */
        public final DateFormat initialValue() {
            return new SimpleDateFormat(HttpDateGenerator.PATTERN_RFC1123);
        }
    };
    private static ConcurrentHashMap<String, TimeZone> mTimeZones = new ConcurrentHashMap<>(10);

    private BoxDateFormat() {
    }

    public static Date convertToDay(Date date) {
        Calendar instance = Calendar.getInstance(TimeZone.getTimeZone("PST"));
        instance.setTime(date);
        return parseRoundToDay(formatRoundToDay(instance.getTime()));
    }

    public static String format(Date date) {
        String format = LOCAL_DATE_FORMAT.format(date);
        return format.substring(0, 22) + ":" + format.substring(22);
    }

    public static String formatRoundToDay(Date date) {
        return LOCAL_ROUND_TO_DAY_DATE_FORMAT.format(date);
    }

    public static Date[] getTimeRangeDates(String str) {
        if (SdkUtils.isEmptyString(str)) {
            return null;
        }
        String[] split = str.split(",");
        Date[] dateArr = new Date[2];
        try {
            dateArr[0] = parse(split[0]);
        } catch (ArrayIndexOutOfBoundsException | ParseException e) {
        }
        try {
            dateArr[1] = parse(split[1]);
            return dateArr;
        } catch (ArrayIndexOutOfBoundsException | ParseException e2) {
            return dateArr;
        }
    }

    public static String getTimeRangeString(Date date, Date date2) {
        if (date == null && date2 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (date != null) {
            sb.append(format(date));
        }
        sb.append(",");
        if (date2 != null) {
            sb.append(format(date2));
        }
        return sb.toString();
    }

    private static TimeZone getTimeZone(String str) {
        TimeZone timeZone = mTimeZones.get(str);
        if (timeZone != null) {
            return timeZone;
        }
        Integer valueOf = Integer.valueOf(Integer.parseInt(str.substring(str.charAt(0) == '+' ? 1 : 0, 3)));
        Integer valueOf2 = Integer.valueOf(Integer.parseInt(str.substring(4)));
        int intValue = valueOf.intValue() * MILLIS_PER_HOUR;
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(valueOf.intValue() < 0 ? intValue - (valueOf2.intValue() * MILLIS_PER_MINUTE) : (valueOf2.intValue() * MILLIS_PER_MINUTE) + intValue, str);
        mTimeZones.put(str, simpleTimeZone);
        return simpleTimeZone;
    }

    public static Date parse(String str) {
        Integer valueOf = Integer.valueOf(Integer.parseInt(str.substring(0, 4)));
        Integer valueOf2 = Integer.valueOf(Integer.parseInt(str.substring(5, 7)) - 1);
        Integer valueOf3 = Integer.valueOf(Integer.parseInt(str.substring(8, 10)));
        Integer valueOf4 = Integer.valueOf(Integer.parseInt(str.substring(11, 13)));
        Integer valueOf5 = Integer.valueOf(Integer.parseInt(str.substring(14, 16)));
        Integer valueOf6 = Integer.valueOf(Integer.parseInt(str.substring(17, 19)));
        Calendar instance = GregorianCalendar.getInstance(getTimeZone(str.substring(19)));
        instance.set(14, 0);
        instance.set(valueOf.intValue(), valueOf2.intValue(), valueOf3.intValue(), valueOf4.intValue(), valueOf5.intValue(), valueOf6.intValue());
        return instance.getTime();
    }

    public static Date parseHeaderDate(String str) {
        return THREAD_LOCAL_HEADER_DATE_FORMAT.get().parse(str);
    }

    public static Date parseRoundToDay(String str) {
        Integer valueOf = Integer.valueOf(Integer.parseInt(str.substring(0, 4)));
        Integer valueOf2 = Integer.valueOf(Integer.parseInt(str.substring(5, 7)) - 1);
        Integer valueOf3 = Integer.valueOf(Integer.parseInt(str.substring(8, 10)));
        Calendar instance = GregorianCalendar.getInstance();
        instance.set(valueOf.intValue(), valueOf2.intValue(), valueOf3.intValue());
        return instance.getTime();
    }
}
