package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.provider.MediaStore;

/* renamed from: agx  reason: default package */
/* compiled from: ShareUtils */
public final class agx {
    public static String a(Activity activity, Bitmap bitmap, String str, String str2) {
        try {
            return MediaStore.Images.Media.insertImage(activity.getContentResolver(), bitmap, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
