// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import meanlabs.comicreader.cloud.smb.SMBShareChooserActivity;

public final class aeg
    implements add
{

    public aeg()
    {
    }

    public final acs a(aev aev)
    {
        aeh.a();
        return new aef(aev);
    }

    public final String a()
    {
        return "smb";
    }

    public final void a(Activity activity, int i)
    {
        aeh.a();
        Intent intent = new Intent(activity, meanlabs/comicreader/cloud/smb/SMBShareChooserActivity);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
