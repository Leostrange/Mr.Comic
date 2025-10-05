package com.box.androidsdk.content.views;

import com.box.androidsdk.content.BoxApiUser;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxResponse;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.box.androidsdk.content.utils.SdkUtils;
import com.box.androidsdk.content.views.BoxAvatarView;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class DefaultAvatarController implements BoxAvatarView.AvatarController, Serializable {
    private static final String DEFAULT_AVATAR_DIR_NAME = "avatar";
    private static final String DEFAULT_AVATAR_EXTENSiON = "jpg";
    private static final String DEFAULT_AVATAR_FILE_PREFIX = "avatar_";
    protected static final int DEFAULT_MAX_AGE = 30;
    protected transient BoxApiUser mApiUser;
    protected HashSet<String> mCleanedDirectories = new HashSet<>();
    protected transient ThreadPoolExecutor mExecutor;
    protected BoxSession mSession;
    protected HashSet<String> mUnavailableAvatars = new HashSet<>();

    public DefaultAvatarController(BoxSession boxSession) {
        this.mSession = boxSession;
        this.mApiUser = new BoxApiUser(boxSession);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        if (getApiUser() == null) {
            this.mApiUser = new BoxApiUser(this.mSession);
        }
    }

    /* access modifiers changed from: protected */
    public void cleanOutOldAvatars(File file, int i) {
        if (file != null && !this.mCleanedDirectories.contains(file.getAbsolutePath())) {
            long currentTimeMillis = System.currentTimeMillis() - (((long) i) * TimeUnit.DAYS.toMillis((long) i));
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().startsWith(DEFAULT_AVATAR_FILE_PREFIX) && file2.lastModified() < currentTimeMillis) {
                        file2.delete();
                    }
                }
            }
        }
    }

    public BoxFutureTask<BoxDownload> executeAvatarDownloadRequest(final String str, BoxAvatarView boxAvatarView) {
        final WeakReference weakReference = new WeakReference(boxAvatarView);
        try {
            final File avatarFile = getAvatarFile(str);
            if (this.mUnavailableAvatars.contains(avatarFile.getAbsolutePath())) {
                return null;
            }
            BoxFutureTask<BoxDownload> task = getApiUser().getDownloadAvatarRequest(getAvatarDir(str), str).toTask();
            task.addOnCompletedListener(new BoxFutureTask.OnCompletedListener<BoxDownload>() {
                public void onCompleted(BoxResponse<BoxDownload> boxResponse) {
                    if (boxResponse.isSuccess()) {
                        BoxAvatarView boxAvatarView = (BoxAvatarView) weakReference.get();
                        if (boxAvatarView != null) {
                            boxAvatarView.updateAvatar();
                            return;
                        }
                        return;
                    }
                    if ((boxResponse.getException() instanceof BoxException) && ((BoxException) boxResponse.getException()).getResponseCode() == 404) {
                        DefaultAvatarController.this.mUnavailableAvatars.add(DefaultAvatarController.this.getAvatarFile(str).getAbsolutePath());
                    }
                    if (avatarFile != null) {
                        avatarFile.delete();
                    }
                }
            });
            executeTask(task);
            return task;
        } catch (IOException e) {
            BoxLogUtils.e("unable to createFile ", (Throwable) e);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void executeTask(BoxFutureTask boxFutureTask) {
        if (this.mExecutor == null) {
            this.mExecutor = SdkUtils.createDefaultThreadPoolExecutor(2, 2, 3600, TimeUnit.SECONDS);
        }
        this.mExecutor.execute(boxFutureTask);
    }

    /* access modifiers changed from: protected */
    public BoxApiUser getApiUser() {
        return this.mApiUser;
    }

    /* access modifiers changed from: protected */
    public File getAvatarDir(String str) {
        File file = new File(this.mSession.getCacheDir(), DEFAULT_AVATAR_DIR_NAME);
        if (!file.exists()) {
            file.mkdirs();
        }
        cleanOutOldAvatars(file, 30);
        return file;
    }

    public File getAvatarFile(String str) {
        return new File(getAvatarDir(str), DEFAULT_AVATAR_FILE_PREFIX + str + ".jpg");
    }

    /* access modifiers changed from: protected */
    public BoxSession getSession() {
        return this.mSession;
    }
}
