// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonFactory;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

final class ii
{

    public static final JsonFactory a = new JsonFactory();
    private static final TimeZone b = TimeZone.getTimeZone("UTC");
    private static final int c = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace("'", "").length();
    private static final int d = "yyyy-MM-dd".replace("'", "").length();

    public static String a(Date date)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        simpledateformat.setCalendar(new GregorianCalendar(b));
        return simpledateformat.format(date);
    }

    public static Date a(String s)
    {
        int i = s.length();
        SimpleDateFormat simpledateformat;
        if (i == c)
        {
            simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        } else
        if (i == d)
        {
            simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        } else
        {
            throw new ParseException((new StringBuilder("timestamp has unexpected format: '")).append(s).append("'").toString(), 0);
        }
        simpledateformat.setCalendar(new GregorianCalendar(b));
        return simpledateformat.parse(s);
    }

}
