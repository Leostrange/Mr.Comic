// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public abstract class gj extends gk
{

    private static final String j = gk.getName();
    final String a;
    protected final Context b;
    protected final String c;

    public gj(String s, String s1, String s2, String s3, Context context, String s4, Bundle bundle)
    {
        super(s, s1, s2, bundle);
        a = s3;
        b = context;
        c = s4;
    }

    private static String a(Context context, String s)
    {
        String s1 = "www";
        Object obj = s1;
        ApplicationInfo applicationinfo;
        try
        {
            applicationinfo = context.getPackageManager().getApplicationInfo(s, 128);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            gz.a(j, (new StringBuilder("No host type found in package ")).append(s).toString());
            return ((String) (obj));
        }
        context = s1;
        obj = s1;
        if (applicationinfo.metaData == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        obj = s1;
        context = applicationinfo.metaData.getString("host.type");
        obj = context;
        gz.a(j, (new StringBuilder("Host Type ")).append(context).append(" found in package ").append(s).toString());
        return context;
    }

    public final String a()
    {
        return "/auth/O2/token";
    }

    public final String a(Bundle bundle)
    {
        gz.c(j, " domain: .amazon.com");
        bundle = a(b, b.getPackageName());
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[fh.a.values().length];
                try
                {
                    a[fh.a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[fh.a.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        if ("development".equalsIgnoreCase(bundle))
        {
            gy.a(fh.a.a);
        } else
        if ("gamma".equalsIgnoreCase(bundle))
        {
            gy.a(fh.a.c);
        }
        _cls1.a[gy.b().ordinal()];
        JVM INSTR tableswitch 1 2: default 72
    //                   1 138
    //                   2 144;
           goto _L1 _L2 _L3
_L1:
        bundle = "api";
_L5:
        bundle = (new StringBuilder()).append(bundle).append(".amazon.com").toString();
        gz.c(j, (new StringBuilder("host for request: ")).append(bundle).toString());
        return bundle;
_L2:
        bundle = "api.integ";
        continue; /* Loop/switch isn't completed */
_L3:
        bundle = "api.pre-prod";
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final String b()
    {
        return ".amazon.com";
    }

    public abstract String c();

    protected void d()
    {
        h.add(new BasicNameValuePair("grant_type", c()));
        h.add(new BasicNameValuePair("client_id", c));
    }

}
