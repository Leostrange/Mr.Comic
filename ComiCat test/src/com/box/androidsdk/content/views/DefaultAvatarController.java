// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxResponse;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.views:
//            BoxAvatarView

public class DefaultAvatarController
    implements BoxAvatarView.AvatarController, Serializable
{

    private static final String DEFAULT_AVATAR_DIR_NAME = "avatar";
    private static final String DEFAULT_AVATAR_EXTENSiON = "jpg";
    private static final String DEFAULT_AVATAR_FILE_PREFIX = "avatar_";
    protected static final int DEFAULT_MAX_AGE = 30;
    protected transient BoxApiUser mApiUser;
    protected HashSet mCleanedDirectories;
    protected transient ThreadPoolExecutor mExecutor;
    protected BoxSession mSession;
    protected HashSet mUnavailableAvatars;

    public DefaultAvatarController(BoxSession boxsession)
    {
        mUnavailableAvatars = new HashSet();
        mCleanedDirectories = new HashSet();
        mSession = boxsession;
        mApiUser = new BoxApiUser(boxsession);
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        if (getApiUser() == null)
        {
            mApiUser = new BoxApiUser(mSession);
        }
    }

    protected void cleanOutOldAvatars(File file, int i)
    {
        if (file != null && !mCleanedDirectories.contains(file.getAbsolutePath())) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l = System.currentTimeMillis();
        long l1 = i;
        long l2 = TimeUnit.DAYS.toMillis(i);
        file = file.listFiles();
        if (file != null)
        {
            int j = file.length;
            i = 0;
            while (i < j) 
            {
                File file1 = file[i];
                if (file1.getName().startsWith("avatar_") && file1.lastModified() < l - l1 * l2)
                {
                    file1.delete();
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public BoxFutureTask executeAvatarDownloadRequest(final String userId, final BoxAvatarView avatarViewWeakReference)
    {
        avatarViewWeakReference = new WeakReference(avatarViewWeakReference);
        final File avatarFile = getAvatarFile(userId);
        if (mUnavailableAvatars.contains(avatarFile.getAbsolutePath()))
        {
            return null;
        }
        BoxFutureTask boxfuturetask;
        try
        {
            boxfuturetask = getApiUser().getDownloadAvatarRequest(getAvatarDir(userId), userId).toTask();
            boxfuturetask.addOnCompletedListener(new com.box.androidsdk.content.BoxFutureTask.OnCompletedListener() {

                final DefaultAvatarController this$0;
                final File val$avatarFile;
                final WeakReference val$avatarViewWeakReference;
                final String val$userId;

                public void onCompleted(BoxResponse boxresponse)
                {
                    if (boxresponse.isSuccess())
                    {
                        boxresponse = (BoxAvatarView)avatarViewWeakReference.get();
                        if (boxresponse != null)
                        {
                            boxresponse.updateAvatar();
                        }
                    } else
                    {
                        if ((boxresponse.getException() instanceof BoxException) && ((BoxException)boxresponse.getException()).getResponseCode() == 404)
                        {
                            mUnavailableAvatars.add(getAvatarFile(userId).getAbsolutePath());
                        }
                        if (avatarFile != null)
                        {
                            avatarFile.delete();
                            return;
                        }
                    }
                }

            
            {
                this$0 = DefaultAvatarController.this;
                avatarViewWeakReference = weakreference;
                userId = s;
                avatarFile = file;
                super();
            }
            });
            executeTask(boxfuturetask);
        }
        // Misplaced declaration of an exception variable
        catch (final String userId)
        {
            BoxLogUtils.e("unable to createFile ", userId);
            return null;
        }
        return boxfuturetask;
    }

    protected void executeTask(BoxFutureTask boxfuturetask)
    {
        if (mExecutor == null)
        {
            mExecutor = SdkUtils.createDefaultThreadPoolExecutor(2, 2, 3600L, TimeUnit.SECONDS);
        }
        mExecutor.execute(boxfuturetask);
    }

    protected BoxApiUser getApiUser()
    {
        return mApiUser;
    }

    protected File getAvatarDir(String s)
    {
        s = new File(mSession.getCacheDir(), "avatar");
        if (!s.exists())
        {
            s.mkdirs();
        }
        cleanOutOldAvatars(s, 30);
        return s;
    }

    public File getAvatarFile(String s)
    {
        return new File(getAvatarDir(s), (new StringBuilder("avatar_")).append(s).append(".jpg").toString());
    }

    protected BoxSession getSession()
    {
        return mSession;
    }
}
