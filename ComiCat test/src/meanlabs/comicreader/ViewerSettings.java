// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import age;
import android.os.Bundle;
import android.widget.ListView;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class ViewerSettings extends ReaderActivity
{

    age a;

    public ViewerSettings()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030050);
        a = new age(this, (ListView)findViewById(0x7f0c008d), null);
        setResult(0);
    }
}
