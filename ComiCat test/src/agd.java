// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.KeyEvent;

public final class agd
{

    public static final void a(Dialog dialog)
    {
        dialog.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

            public final boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                return i == 84 && keyevent.getRepeatCount() == 0;
            }

        });
    }
}
