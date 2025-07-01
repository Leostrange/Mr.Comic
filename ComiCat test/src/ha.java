// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;

public final class ha
{

    private static final String a = ha.getName();
    private static SQLiteDatabase b = null;

    private ha()
    {
        throw new Exception("This class is not instantiable!");
    }

    public static SQLiteDatabase a(Context context)
    {
        ha;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = (new gg(context)).getWritableDatabase();
        }
        context = b;
        ha;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static String a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < abyte0.length; i++)
        {
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuffer.append("0");
            }
            stringbuffer.append(s);
        }

        return stringbuffer.toString();
    }

    public static String a(String as[], String s)
    {
        Object obj;
        if (as != null && as.length > 0)
        {
            String s1 = "";
            int i = 0;
            do
            {
                obj = s1;
                if (i >= as.length)
                {
                    break;
                }
                obj = (new StringBuilder()).append(s1).append(as[i].trim());
                if (i == as.length - 1)
                {
                    s1 = "";
                } else
                {
                    s1 = s;
                }
                s1 = ((StringBuilder) (obj)).append(s1).toString();
                i++;
            } while (true);
        } else
        {
            obj = null;
        }
        return ((String) (obj));
    }

    public static boolean a(String s)
    {
        if (s == null)
        {
            gz.c(a, "URL is null");
        } else
        {
            URL url;
            try
            {
                url = new URL(s);
            }
            catch (MalformedURLException malformedurlexception)
            {
                gz.a(a, "MalformedURLException", (new StringBuilder(" url=")).append(s).toString());
                return false;
            }
            s = url.getProtocol();
            if (!TextUtils.isEmpty(s) && s.contains("http"))
            {
                s = url.getHost();
                if (!TextUtils.isEmpty(s) && s.contains(".amazon."))
                {
                    s = url.getPath();
                    boolean flag = TextUtils.isEmpty(s);
                    boolean flag1 = s.startsWith("/ap/");
                    boolean flag2 = s.equals("/gp/yourstore/home");
                    boolean flag3 = s.equals("/ap/forgotpassword");
                    gz.a(a, (new StringBuilder(" isEmpty=")).append(flag).append("startsWithAP=").append(flag1).append("equalsGP=").append(flag2).append("equalsForgotPassword=").append(flag3).toString());
                    if (!flag && (flag1 && !flag3 || flag2))
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String[] a(String s, String s1)
    {
        if (s != null && s.trim().length() > 0)
        {
            return s.trim().split((new StringBuilder("[")).append(s1).append("]").toString());
        } else
        {
            return null;
        }
    }

}
