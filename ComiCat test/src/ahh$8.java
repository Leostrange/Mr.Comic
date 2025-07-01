// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.os.FileObserver;

final class ang.String extends FileObserver
{

    final ahh a;

    public final void onEvent(int i, String s)
    {
        ahh.a("FileObserver received event %d", new Object[] {
            Integer.valueOf(i)
        });
        s = a.getActivity();
        if (s != null)
        {
            s.runOnUiThread(new Runnable() {

                final ahh._cls8 a;

                public final void run()
                {
                    ahh.g(a.a);
                }

            
            {
                a = ahh._cls8.this;
                super();
            }
            });
        }
    }

    (ahh ahh1, String s)
    {
        a = ahh1;
        super(s, 960);
    }
}
