// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.dropbox;

import ado;
import kb;

// Referenced classes of package meanlabs.comicreader.cloud.dropbox:
//            DropboxAuthActivity

final class a
    implements Runnable
{

    final String a;
    final DropboxAuthActivity b;

    public final void run()
    {
        kb kb = b.a.b();
        b.runOnUiThread(new Runnable(kb) {

            final kb a;
            final DropboxAuthActivity._cls1 b;

            public final void run()
            {
                DropboxAuthActivity.a(b.b, b.a, a);
            }

            
            {
                b = DropboxAuthActivity._cls1.this;
                a = kb;
                super();
            }
        });
    }

    _cls1.a(DropboxAuthActivity dropboxauthactivity, String s)
    {
        b = dropboxauthactivity;
        a = s;
        super();
    }
}
