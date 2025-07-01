// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import meanlabs.comicreader.cloud.onedrive.OneDriveAuthActivity;

public final class aea
    implements add
{

    public aea()
    {
    }

    public final acs a(aev aev)
    {
        return new adz(aev);
    }

    public final String a()
    {
        return "onedrive";
    }

    public final void a(Activity activity, int i)
    {
        Intent intent = new Intent(activity, meanlabs/comicreader/cloud/onedrive/OneDriveAuthActivity);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }
}
