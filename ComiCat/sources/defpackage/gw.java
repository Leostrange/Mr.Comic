package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Time;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.http.HttpHeaders;
import org.apache.http.cookie.Cookie;

/* renamed from: gw  reason: default package */
/* compiled from: MAPCookie */
public class gw implements Serializable, Cookie {
    private static final String a = gw.class.getName();
    private final transient Time b = new Time();
    private final Map<String, String> c = new HashMap();
    private int[] d;

    public gw(String str, String str2, String str3) {
        this.c.put("Name", str);
        this.c.put("Value", str2);
        this.c.put("DirectedId", (Object) null);
        this.c.put("Domain", str3);
        this.c.put("Secure", Boolean.toString(true));
        gz.a(a, "Creating Cookie from data. name=" + getName(), "domain:" + getDomain() + " directedId:" + a("DirectedId") + " cookie:" + getValue());
    }

    private String a(String str) {
        return this.c.get(str);
    }

    public static void a(Context context, Cookie cookie, String str) {
        CookieSyncManager instance;
        try {
            instance = CookieSyncManager.getInstance();
        } catch (IllegalStateException e) {
            gz.c(a, "CookieSyncManager not yet created... creating");
            CookieSyncManager.createInstance(context);
            instance = CookieSyncManager.getInstance();
        }
        CookieManager instance2 = CookieManager.getInstance();
        instance2.setAcceptCookie(true);
        instance.sync();
        StringBuilder sb = new StringBuilder(cookie.getName().trim());
        sb.append("=");
        sb.append("; path=/");
        sb.append("; domain=" + cookie.getDomain().trim());
        if (cookie.isSecure()) {
            sb.append("; secure");
        }
        Date expiryDate = cookie.getExpiryDate();
        if (expiryDate != null) {
            sb.append("; expires=");
            if (expiryDate.before(Calendar.getInstance().getTime())) {
                gz.c(a, "Cookie " + cookie.getName() + " expired : " + expiryDate);
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM yyyy kk:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            sb.append(simpleDateFormat.format(expiryDate));
        }
        instance2.setCookie(str, sb.toString());
        instance.sync();
    }

    public String getComment() {
        return a("Comment");
    }

    public String getCommentURL() {
        return a("CommentUrl");
    }

    public String getDomain() {
        return a("Domain");
    }

    public Date getExpiryDate() {
        String a2 = a(HttpHeaders.EXPIRES);
        if (a2 == null) {
            return null;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM yyyy kk:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(a2);
        } catch (ParseException e) {
            gz.a(a, "Date parse error on MAP Cookie", (Throwable) e);
            return null;
        }
    }

    public String getName() {
        return a("Name");
    }

    public String getPath() {
        return a("Path");
    }

    public int[] getPorts() {
        return this.d;
    }

    public String getValue() {
        return a("Value");
    }

    public int getVersion() {
        if (TextUtils.isEmpty(a("Version"))) {
            return -1;
        }
        return Integer.parseInt(a("Version"));
    }

    public boolean isExpired(Date date) {
        if (getExpiryDate() == null) {
            return false;
        }
        if (date == null) {
            date = Calendar.getInstance().getTime();
        }
        return getExpiryDate().before(date);
    }

    public boolean isPersistent() {
        return Boolean.parseBoolean(a("Persistant"));
    }

    public boolean isSecure() {
        return Boolean.parseBoolean(a("Secure"));
    }
}
