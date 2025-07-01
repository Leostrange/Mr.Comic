// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import android.content.Context;
import android.widget.Toast;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.utils:
//            SdkUtils

static final class val.duration
    implements Runnable
{

    final Context val$context;
    final int val$duration;
    final int val$resId;

    public final void run()
    {
        SdkUtils.access$000().put(Integer.valueOf(val$resId), Long.valueOf(System.currentTimeMillis()));
        Toast.makeText(val$context, val$resId, val$duration).show();
    }

    (int i, Context context1, int j)
    {
        val$resId = i;
        val$context = context1;
        val$duration = j;
        super();
    }
}
