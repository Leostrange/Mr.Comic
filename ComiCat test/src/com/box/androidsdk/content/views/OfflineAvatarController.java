// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import android.content.Context;
import com.box.androidsdk.content.BoxFutureTask;
import java.io.File;

// Referenced classes of package com.box.androidsdk.content.views:
//            DefaultAvatarController, BoxAvatarView

public class OfflineAvatarController extends DefaultAvatarController
{

    final Context mContext;

    public OfflineAvatarController(Context context)
    {
        super(null);
        mContext = context.getApplicationContext();
    }

    public BoxFutureTask executeAvatarDownloadRequest(String s, BoxAvatarView boxavatarview)
    {
        return null;
    }

    protected File getAvatarDir(String s)
    {
        s = new File((new StringBuilder()).append(mContext.getFilesDir().getAbsolutePath()).append(File.separator).append(s).append(File.separator).append("avatar").toString());
        cleanOutOldAvatars(s, 30);
        return s;
    }
}
