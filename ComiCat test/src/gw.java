// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Time;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.http.cookie.Cookie;

public class gw
    implements Serializable, Cookie
{

    private static final String a = gw.getName();
    private final transient Time b = new Time();
    private final Map c = new HashMap();
    private int d[];

    public gw(String s, String s1, String s2)
    {
        c.put("Name", s);
        c.put("Value", s1);
        c.put("DirectedId", null);
        c.put("Domain", s2);
        s = Boolean.toString(true);
        c.put("Secure", s);
        gz.a(a, (new StringBuilder("Creating Cookie from data. name=")).append(getName()).toString(), (new StringBuilder("domain:")).append(getDomain()).append(" directedId:").append(a("DirectedId")).append(" cookie:").append(getValue()).toString());
    }

    private String a(String s)
    {
        return (String)c.get(s);
    }

    public static void a(Context context, Cookie cookie, String s)
    {
        CookieSyncManager cookiesyncmanager = CookieSyncManager.getInstance();
        context = cookiesyncmanager;
_L2:
        CookieManager cookiemanager = CookieManager.getInstance();
        cookiemanager.setAcceptCookie(true);
        context.sync();
        StringBuilder stringbuilder = new StringBuilder(cookie.getName().trim());
        stringbuilder.append("=");
        stringbuilder.append("; path=/");
        stringbuilder.append((new StringBuilder("; domain=")).append(cookie.getDomain().trim()).toString());
        if (cookie.isSecure())
        {
            stringbuilder.append("; secure");
        }
        Date date = cookie.getExpiryDate();
        if (date != null)
        {
            stringbuilder.append("; expires=");
            if (date.before(Calendar.getInstance().getTime()))
            {
                gz.c(a, (new StringBuilder("Cookie ")).append(cookie.getName()).append(" expired : ").append(date).toString());
            }
            cookie = new SimpleDateFormat("dd MMM yyyy kk:mm:ss z", Locale.US);
            cookie.setTimeZone(TimeZone.getTimeZone("GMT"));
            stringbuilder.append(cookie.format(date));
        }
        cookiemanager.setCookie(s, stringbuilder.toString());
        context.sync();
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        gz.c(a, "CookieSyncManager not yet created... creating");
        CookieSyncManager.createInstance(context);
        context = CookieSyncManager.getInstance();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getComment()
    {
        return a("Comment");
    }

    public String getCommentURL()
    {
        return a("CommentUrl");
    }

    public String getDomain()
    {
        return a("Domain");
    }

    public Date getExpiryDate()
    {
        Object obj = null;
        String s = a("Expires");
        if (s != null)
        {
            try
            {
                obj = new SimpleDateFormat("dd MMM yyyy kk:mm:ss z", Locale.US);
                ((DateFormat) (obj)).setTimeZone(TimeZone.getTimeZone("GMT"));
                obj = ((DateFormat) (obj)).parse(s);
            }
            catch (ParseException parseexception)
            {
                gz.a(a, "Date parse error on MAP Cookie", parseexception);
                return null;
            }
        }
        return ((Date) (obj));
    }

    public String getName()
    {
        return a("Name");
    }

    public String getPath()
    {
        return a("Path");
    }

    public int[] getPorts()
    {
        return d;
    }

    public String getValue()
    {
        return a("Value");
    }

    public int getVersion()
    {
        if (TextUtils.isEmpty(a("Version")))
        {
            return -1;
        } else
        {
            return Integer.parseInt(a("Version"));
        }
    }

    public boolean isExpired(Date date)
    {
        if (getExpiryDate() == null)
        {
            return false;
        }
        Date date1 = date;
        if (date == null)
        {
            date1 = Calendar.getInstance().getTime();
        }
        return getExpiryDate().before(date1);
    }

    public boolean isPersistent()
    {
        return Boolean.parseBoolean(a("Persistant"));
    }

    public boolean isSecure()
    {
        return Boolean.parseBoolean(a("Secure"));
    }

}
