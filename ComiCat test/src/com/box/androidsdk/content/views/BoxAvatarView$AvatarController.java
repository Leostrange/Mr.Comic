// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import com.box.androidsdk.content.BoxFutureTask;
import java.io.File;

// Referenced classes of package com.box.androidsdk.content.views:
//            BoxAvatarView

public static interface 
{

    public abstract BoxFutureTask executeAvatarDownloadRequest(String s, BoxAvatarView boxavatarview);

    public abstract File getAvatarFile(String s);
}
