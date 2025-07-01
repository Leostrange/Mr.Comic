// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.Toast;
import meanlabs.comicreader.ComicReaderApp;

public final class ahf
{

    public static String a(Activity activity, int i)
    {
        activity = (EditText)activity.findViewById(i);
        if (activity != null)
        {
            return activity.getText().toString().trim();
        } else
        {
            return null;
        }
    }

    public static void a(Activity activity, int i, String s)
    {
        activity = (EditText)activity.findViewById(i);
        if (activity != null)
        {
            activity.setText(s);
        }
    }

    public static final void a(Dialog dialog)
    {
        dialog.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

            public final boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                return i == 84 && keyevent.getRepeatCount() == 0;
            }

        });
    }

    public static void a(Context context, int i)
    {
        a(context, ComicReaderApp.a().getString(i));
    }

    public static void a(Context context, String s)
    {
        Toast.makeText(context, s, 0).show();
    }

    public static void a(Context context, String s, boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 1;
        }
        context = Toast.makeText(context, s, i);
        context.setGravity(17, 0, 0);
        context.show();
    }

    public static boolean a()
    {
        return ComicReaderApp.a().getResources().getConfiguration().orientation == 2;
    }

    public static void b(Context context, int i)
    {
        a(context, ComicReaderApp.a().getString(i), true);
    }
}
