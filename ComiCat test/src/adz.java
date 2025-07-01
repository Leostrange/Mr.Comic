// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class adz extends acs
{

    sz b;

    protected adz(aev aev)
    {
        super(aev);
        if (aev != null)
        {
            b = new sz(new aeb(aev));
        }
    }

    public final List a(adc adc1)
    {
        ArrayList arraylist = new ArrayList();
        Object obj;
        Object obj1;
        obj = b;
        obj1 = (new StringBuilder()).append(adc1.c()).append("/files").toString();
        sz.b(((String) (obj1)));
        obj1 = new st(((sz) (obj)).c, ((sz) (obj)).b, ((String) (obj1)));
        ((sz) (obj)).d.a();
        obj = (JSONObject)((sm) (obj1)).a();
        obj1 = new te.a(((sm) (obj1)).b(), ((sm) (obj1)).b);
        if (te.a.d || obj != null) goto _L2; else goto _L1
_L1:
        try
        {
            throw new AssertionError();
        }
        // Misplaced declaration of an exception variable
        catch (adc adc1)
        {
            adc1.printStackTrace();
        }
_L6:
        return arraylist;
_L2:
        obj1.b = ((JSONObject) (obj));
        obj = ((te.a) (obj1)).a().a.getJSONArray("data");
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((JSONArray) (obj)).length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        int i = 0;
_L4:
        if (i >= ((JSONArray) (obj)).length())
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist.add(new ady(((JSONArray) (obj)).getJSONObject(i), adc1.b()));
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        Object obj;
        obj = b;
        s = (new StringBuilder()).append(s).append("/content").toString();
        tb.a(s, "path");
        sz.a(s);
        obj = new ss(((sz) (obj)).c, ((sz) (obj)).b, s);
        s = new tc(new tc.a("GET", ((sm) (obj)).b));
        sz.a a1 = new sz.a(s);
        ((sm) (obj)).a.add(a1);
        obj = (InputStream)((ss) (obj)).a();
        if (tc.c || obj != null) goto _L2; else goto _L1
_L1:
        try
        {
            throw new AssertionError();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        acy1.a(acw.c, agv.a(s));
_L4:
        return false;
_L2:
        s.b = ((InputStream) (obj));
        if (((tc) (s)).b == null) goto _L4; else goto _L3
_L3:
        s1 = agz.b(s1);
        if (s1 == null) goto _L4; else goto _L5
_L5:
        boolean flag = aha.a(((tc) (s)).b, s1, acy1);
        return flag;
    }

    public final String b()
    {
        return "onedrive";
    }

    public final String c()
    {
        return ComicReaderApp.a().getString(0x7f060286);
    }

    public final int d()
    {
        return 0x7f020095;
    }

    public final String e()
    {
        Context context = ComicReaderApp.a();
        return (new StringBuilder()).append(context.getString(0x7f06007d, new Object[] {
            c()
        })).append("\n\n").append(context.getString(0x7f06007e)).append("\n\n").append(context.getString(0x7f06007f)).append("\n\n").append(context.getString(0x7f060080)).append("\n\n").append(context.getString(0x7f060081)).append("\n\n").append(context.getString(0x7f060082)).append("\n").toString();
    }

    public final boolean f()
    {
        return b != null;
    }

    public final String g()
    {
        return "OneDrive";
    }

    public final adc j()
    {
        Object obj = new JSONObject();
        try
        {
            ((JSONObject) (obj)).put("id", "/me/skydrive");
            ((JSONObject) (obj)).put("type", "folder");
            ((JSONObject) (obj)).put("name", "");
            obj = new ady(((JSONObject) (obj)), "/");
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            return null;
        }
        return ((adc) (obj));
    }

    public final boolean l()
    {
        return true;
    }
}
