// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import java.net.URLEncoder;
import java.util.ArrayList;

public final class agu
{

    ArrayList a;
    ArrayList b;
    public String c;
    public String d;
    ArrayList e;

    public agu(String s, String s1, String s2)
    {
        a = new ArrayList();
        b = new ArrayList();
        e = new ArrayList();
        a.add(s);
        c = s1;
        d = s2;
    }

    public final void a(Activity activity)
    {
        Uri uri = Uri.parse((new StringBuilder("mailto:")).append((String)a.get(0)).append("?subject=").append(URLEncoder.encode(c, "UTF-8")).append("&body=").append(URLEncoder.encode(d, "UTF-8")).toString().replace("+", "%20"));
        Object obj;
        if (e.size() > 1)
        {
            obj = "android.intent.action.SEND_MULTIPLE";
        } else
        {
            obj = "android.intent.action.SENDTO";
        }
        obj = new Intent(((String) (obj)), uri);
        if (b.size() > 0)
        {
            ((Intent) (obj)).putExtra("android.intent.extra.CC", ((java.io.Serializable) (b.toArray())));
        }
        if (e.size() > 0)
        {
            if (e.size() <= 1)
            {
                break MISSING_BLOCK_LABEL_163;
            }
            ((Intent) (obj)).putParcelableArrayListExtra("android.intent.extra.STREAM", e);
        }
_L1:
        activity.startActivityForResult(Intent.createChooser(((Intent) (obj)), "Send email..."), 0);
        return;
        try
        {
            ((Intent) (obj)).putExtra("android.intent.extra.STREAM", (Parcelable)e.get(0));
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            activity.printStackTrace();
            return;
        }
          goto _L1
    }
}
