// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import act;
import add;
import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package meanlabs.comicreader.cloud:
//            CloudSync

final class a
    implements android.content.ace.OnClickListener
{

    final List a;
    final CloudSync b;

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        Object obj = act.b();
        CloudSync cloudsync = b;
        obj = ((act) (obj)).a(((add)a.get(i)).a());
        if (obj != null)
        {
            ((add) (obj)).a(cloudsync, -1);
        }
        dialoginterface.dismiss();
    }

    Listener(CloudSync cloudsync, List list)
    {
        b = cloudsync;
        a = list;
        super();
    }
}
