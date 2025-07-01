// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Build;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import meanlabs.comicreader.ComicReaderApp;

public final class agt
{

    public static boolean c = false;
    private static agt d = null;
    public BufferedWriter a;
    public File b;

    private agt()
    {
        if (!c)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        b = new File(ComicReaderApp.a().getExternalFilesDir("Logs"), "Comicatlog.log");
        a = new BufferedWriter(new FileWriter(b));
        a((new StringBuilder("ComiCat App Version: ")).append(agv.d()).append("\n\n").toString());
        a((new StringBuilder("Device: ")).append(Build.MODEL).append("\n\n").toString());
        a("********************* START OF LOG ***************************");
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    public static agt a()
    {
        if (d == null)
        {
            d = new agt();
        }
        return d;
    }

    public static void a(Exception exception)
    {
label0:
        {
            if (!c)
            {
                break label0;
            }
            agt agt1 = a();
            StringWriter stringwriter;
            PrintWriter printwriter;
            try
            {
                if (agt1.a == null)
                {
                    break MISSING_BLOCK_LABEL_157;
                }
                stringwriter = new StringWriter();
                stringwriter.append((new StringBuilder()).append(exception.toString()).append("\n\n").toString());
                printwriter = new PrintWriter(stringwriter);
                stringwriter.append("--------- Stack trace ---------\n");
                exception.printStackTrace(printwriter);
                stringwriter.append("-------------------------------\n\n");
                exception = exception.getCause();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                exception.printStackTrace();
                return;
            }
        }
        if (exception == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        stringwriter.append("--------- Cause ---------\n\n");
        stringwriter.append((new StringBuilder()).append(exception.toString()).append("\n").toString());
        exception.printStackTrace(printwriter);
        stringwriter.append("-------------------------------\n\n");
        agt1.a.write(stringwriter.toString());
        agt1.a.flush();
        printwriter.close();
        return;
        exception.printStackTrace();
        return;
    }

    public static void a(String s, String s1)
    {
        if (c)
        {
            a().a((new StringBuilder()).append(s).append(": ").append(s1).toString());
        }
    }

    public final void a(String s)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        a.write(s);
        a.newLine();
        a.flush();
        return;
        s;
        s.printStackTrace();
        return;
    }

}
