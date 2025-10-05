package com.box.androidsdk.content.views;

import android.content.Context;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxSession;
import java.io.File;

public class OfflineAvatarController extends DefaultAvatarController {
    final Context mContext;

    public OfflineAvatarController(Context context) {
        super((BoxSession) null);
        this.mContext = context.getApplicationContext();
    }

    public BoxFutureTask<BoxDownload> executeAvatarDownloadRequest(String str, BoxAvatarView boxAvatarView) {
        return null;
    }

    /* access modifiers changed from: protected */
    public File getAvatarDir(String str) {
        File file = new File(this.mContext.getFilesDir().getAbsolutePath() + File.separator + str + File.separator + "avatar");
        cleanOutOldAvatars(file, 30);
        return file;
    }
}
