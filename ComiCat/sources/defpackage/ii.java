package defpackage;

import com.fasterxml.jackson.core.JsonFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* renamed from: ii  reason: default package */
/* compiled from: Util */
final class ii {
    public static final JsonFactory a = new JsonFactory();
    private static final TimeZone b = TimeZone.getTimeZone("UTC");
    private static final int c = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace("'", "").length();
    private static final int d = "yyyy-MM-dd".replace("'", "").length();

    public static String a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        simpleDateFormat.setCalendar(new GregorianCalendar(b));
        return simpleDateFormat.format(date);
    }

    public static Date a(String str) {
        SimpleDateFormat simpleDateFormat;
        int length = str.length();
        if (length == c) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        } else if (length == d) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        } else {
            throw new ParseException("timestamp has unexpected format: '" + str + "'", 0);
        }
        simpleDateFormat.setCalendar(new GregorianCalendar(b));
        return simpleDateFormat.parse(str);
    }
}
