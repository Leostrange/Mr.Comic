package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompatBase;
import android.widget.RemoteViews;
import defpackage.cv;
import java.text.NumberFormat;

/* renamed from: dc  reason: default package */
/* compiled from: NotificationCompatImplBase */
public final class dc {
    public static RemoteViews a(Context context, NotificationCompatBase.Action action) {
        boolean z = action.getActionIntent() == null;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), cv.h.notification_media_action);
        remoteViews.setImageViewResource(cv.f.action0, action.getIcon());
        if (!z) {
            remoteViews.setOnClickPendingIntent(cv.f.action0, action.getActionIntent());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(cv.f.action0, action.getTitle());
        }
        return remoteViews;
    }

    public static RemoteViews a(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, Bitmap bitmap, CharSequence charSequence4, boolean z, long j, int i2, boolean z2) {
        boolean z3;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        boolean z4 = false;
        boolean z5 = false;
        if (bitmap == null || Build.VERSION.SDK_INT < 16) {
            remoteViews.setViewVisibility(cv.f.icon, 8);
        } else {
            remoteViews.setImageViewBitmap(cv.f.icon, bitmap);
        }
        if (charSequence != null) {
            remoteViews.setTextViewText(cv.f.title, charSequence);
        }
        if (charSequence2 != null) {
            remoteViews.setTextViewText(cv.f.text, charSequence2);
            z4 = true;
        }
        if (charSequence3 != null) {
            remoteViews.setTextViewText(cv.f.info, charSequence3);
            remoteViews.setViewVisibility(cv.f.info, 0);
            z3 = true;
        } else if (i > 0) {
            if (i > context.getResources().getInteger(cv.g.status_bar_notification_info_maxnum)) {
                remoteViews.setTextViewText(cv.f.info, context.getResources().getString(cv.i.status_bar_notification_info_overflow));
            } else {
                remoteViews.setTextViewText(cv.f.info, NumberFormat.getIntegerInstance().format((long) i));
            }
            remoteViews.setViewVisibility(cv.f.info, 0);
            z3 = true;
        } else {
            remoteViews.setViewVisibility(cv.f.info, 8);
            z3 = z4;
        }
        if (charSequence4 != null && Build.VERSION.SDK_INT >= 16) {
            remoteViews.setTextViewText(cv.f.text, charSequence4);
            if (charSequence2 != null) {
                remoteViews.setTextViewText(cv.f.text2, charSequence2);
                remoteViews.setViewVisibility(cv.f.text2, 0);
                z5 = true;
            } else {
                remoteViews.setViewVisibility(cv.f.text2, 8);
            }
        }
        if (z5 && Build.VERSION.SDK_INT >= 16) {
            if (z2) {
                remoteViews.setTextViewTextSize(cv.f.text, 0, (float) context.getResources().getDimensionPixelSize(cv.d.notification_subtext_size));
            }
            remoteViews.setViewPadding(cv.f.line1, 0, 0, 0, 0);
        }
        if (j != 0) {
            if (z) {
                remoteViews.setViewVisibility(cv.f.chronometer, 0);
                remoteViews.setLong(cv.f.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + j);
                remoteViews.setBoolean(cv.f.chronometer, "setStarted", true);
            } else {
                remoteViews.setViewVisibility(cv.f.time, 0);
                remoteViews.setLong(cv.f.time, "setTime", j);
            }
        }
        remoteViews.setViewVisibility(cv.f.line3, z3 ? 0 : 8);
        return remoteViews;
    }
}
