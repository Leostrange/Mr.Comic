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

    final kb a;
    final a b;

    public final void run()
    {
        DropboxAuthActivity.a(b.b, b.b, a);
    }

    ( , kb kb)
    {
        b = ;
        a = kb;
        super();
    }

    // Unreferenced inner class meanlabs/comicreader/cloud/dropbox/DropboxAuthActivity$1

/* anonymous class */
    final class DropboxAuthActivity._cls1
        implements Runnable
    {

        final String a;
        final DropboxAuthActivity b;

        public final void run()
        {
            kb kb = b.a.b();
            b.runOnUiThread(new DropboxAuthActivity._cls1._cls1(this, kb));
        }

            
            {
                b = dropboxauthactivity;
                a = s;
                super();
            }
    }

}
