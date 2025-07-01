// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.requests.BoxResponse;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashSet;

// Referenced classes of package com.box.androidsdk.content.views:
//            DefaultAvatarController, BoxAvatarView

class val.avatarFile
    implements com.box.androidsdk.content.istener
{

    final DefaultAvatarController this$0;
    final File val$avatarFile;
    final WeakReference val$avatarViewWeakReference;
    final String val$userId;

    public void onCompleted(BoxResponse boxresponse)
    {
        if (boxresponse.isSuccess())
        {
            boxresponse = (BoxAvatarView)val$avatarViewWeakReference.get();
            if (boxresponse != null)
            {
                boxresponse.updateAvatar();
            }
        } else
        {
            if ((boxresponse.getException() instanceof BoxException) && ((BoxException)boxresponse.getException()).getResponseCode() == 404)
            {
                mUnavailableAvatars.add(getAvatarFile(val$userId).getAbsolutePath());
            }
            if (val$avatarFile != null)
            {
                val$avatarFile.delete();
                return;
            }
        }
    }

    r()
    {
        this$0 = final_defaultavatarcontroller;
        val$avatarViewWeakReference = weakreference;
        val$userId = s;
        val$avatarFile = File.this;
        super();
    }
}
