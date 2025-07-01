// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import act;
import aei;
import aev;
import aew;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package meanlabs.comicreader.cloud:
//            CloudSync

final class a
    implements ject
{

    final CloudSync a;

    public final void a(boolean flag)
    {
        if (flag)
        {
            Object obj = aei.a().g.a("box");
            if (((List) (obj)).size() > 0)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    aev aev1 = (aev)((Iterator) (obj)).next();
                    if (aev1.g == null || aev1.g.length() == 0)
                    {
                        act.b().b(aev1.a);
                    }
                } while (true);
            }
        }
    }

    (CloudSync cloudsync)
    {
        a = cloudsync;
        super();
    }
}
