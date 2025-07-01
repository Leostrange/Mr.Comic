// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class hb
{

    public static final String a = hb.getName();
    public final String b = a();
    private final String c;
    private final Context d;

    public hb(Context context, String s)
    {
        c = s;
        d = context;
    }

    private String a()
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        Object obj = d.getPackageManager().getResourcesForApplication(c).getAssets().open("api_key.txt");
        Object obj1;
        gz.c(a, "Attempting to parse API Key from assets directory");
        obj1 = a(((InputStream) (obj)));
        if (obj == null) goto _L4; else goto _L3
_L3:
        ((InputStream) (obj)).close();
        return ((String) (obj1));
_L7:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        ((InputStream) (obj)).close();
        throw obj1;
        obj;
        gz.c(a, (new StringBuilder("Unable to get api key asset document: ")).append(((IOException) (obj)).getMessage()).toString());
_L2:
        return null;
        obj;
        gz.c(a, (new StringBuilder("Unable to get api key asset document: ")).append(((android.content.pm.PackageManager.NameNotFoundException) (obj)).getMessage()).toString());
        if (true) goto _L2; else goto _L5
_L5:
        obj1;
        continue; /* Loop/switch isn't completed */
_L4:
        return ((String) (obj1));
        obj1;
        obj = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String a(InputStream inputstream)
    {
        Object obj2 = null;
        Object obj = new InputStreamReader(inputstream, "UTF-8");
        inputstream = new BufferedReader(((Reader) (obj)));
        Object obj1;
        InputStream inputstream1;
        inputstream1 = inputstream;
        obj1 = obj;
        String s = inputstream.readLine();
        obj1 = s;
        try
        {
            ((Reader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.d(a, (new StringBuilder("Unable to close InputStreamReader: ")).append(((IOException) (obj)).getMessage()).toString());
        }
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            gz.d(a, (new StringBuilder("Unable to close BufferedReader: ")).append(inputstream.getMessage()).toString());
            return ((String) (obj1));
        }
_L2:
        return ((String) (obj1));
        IOException ioexception;
        ioexception;
        inputstream = null;
        obj = null;
_L5:
        inputstream1 = inputstream;
        obj1 = obj;
        gz.c(a, (new StringBuilder("Unable read from asset: ")).append(ioexception.getMessage()).toString());
        if (obj != null)
        {
            try
            {
                ((Reader) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                gz.d(a, (new StringBuilder("Unable to close InputStreamReader: ")).append(((IOException) (obj)).getMessage()).toString());
            }
        }
        obj1 = obj2;
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            inputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            gz.d(a, (new StringBuilder("Unable to close BufferedReader: ")).append(inputstream.getMessage()).toString());
            return null;
        }
        return null;
        inputstream;
        inputstream1 = null;
        obj = null;
_L4:
        if (obj != null)
        {
            try
            {
                ((Reader) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                gz.d(a, (new StringBuilder("Unable to close InputStreamReader: ")).append(((IOException) (obj)).getMessage()).toString());
            }
        }
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                gz.d(a, (new StringBuilder("Unable to close BufferedReader: ")).append(((IOException) (obj)).getMessage()).toString());
            }
        }
        throw inputstream;
        inputstream;
        inputstream1 = null;
        continue; /* Loop/switch isn't completed */
        inputstream;
        obj = obj1;
        if (true) goto _L4; else goto _L3
_L3:
        ioexception;
        inputstream = null;
          goto _L5
        ioexception;
          goto _L5
    }

    public final String a(String s)
    {
        Object obj = null;
        String s1 = obj;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        gz.c(a, "Attempting to parse API Key from meta data in Android manifest");
        ApplicationInfo applicationinfo;
        try
        {
            applicationinfo = d.getPackageManager().getApplicationInfo(c, 128);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            gz.d(a, (new StringBuilder("(key=")).append(s).append(") ").append(namenotfoundexception.getMessage()).toString());
            return null;
        }
        s1 = obj;
        if (applicationinfo.metaData != null)
        {
            s1 = applicationinfo.metaData.getString(s);
        }
        return s1;
    }

}
