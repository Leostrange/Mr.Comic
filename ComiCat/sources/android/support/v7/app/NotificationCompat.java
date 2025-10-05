package android.support.v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import defpackage.cv;
import java.util.ArrayList;

public class NotificationCompat extends android.support.v4.app.NotificationCompat {

    public static class Builder extends NotificationCompat.Builder {
        public Builder(Context context) {
            super(context);
        }

        /* access modifiers changed from: protected */
        public NotificationCompat.BuilderExtender getExtender() {
            return Build.VERSION.SDK_INT >= 21 ? new LollipopExtender() : Build.VERSION.SDK_INT >= 16 ? new JellybeanExtender() : Build.VERSION.SDK_INT >= 14 ? new IceCreamSandwichExtender() : super.getExtender();
        }
    }

    static class IceCreamSandwichExtender extends NotificationCompat.BuilderExtender {
        private IceCreamSandwichExtender() {
        }

        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            NotificationCompat.addMediaStyleToBuilderIcs(notificationBuilderWithBuilderAccessor, builder);
            return notificationBuilderWithBuilderAccessor.build();
        }
    }

    static class JellybeanExtender extends NotificationCompat.BuilderExtender {
        private JellybeanExtender() {
        }

        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            NotificationCompat.addMediaStyleToBuilderIcs(notificationBuilderWithBuilderAccessor, builder);
            Notification build = notificationBuilderWithBuilderAccessor.build();
            NotificationCompat.addBigMediaStyleToBuilderJellybean(build, builder);
            return build;
        }
    }

    static class LollipopExtender extends NotificationCompat.BuilderExtender {
        private LollipopExtender() {
        }

        public Notification build(NotificationCompat.Builder builder, NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            NotificationCompat.addMediaStyleToBuilderLollipop(notificationBuilderWithBuilderAccessor, builder.mStyle);
            return notificationBuilderWithBuilderAccessor.build();
        }
    }

    public static class MediaStyle extends NotificationCompat.Style {
        int[] mActionsToShowInCompact = null;
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;

        public MediaStyle() {
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.mToken = token;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.mActionsToShowInCompact = iArr;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }

    /* access modifiers changed from: private */
    public static void addBigMediaStyleToBuilderJellybean(Notification notification, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) builder.mStyle;
            Context context = builder.mContext;
            CharSequence charSequence = builder.mContentTitle;
            CharSequence charSequence2 = builder.mContentText;
            CharSequence charSequence3 = builder.mContentInfo;
            int i = builder.mNumber;
            Bitmap bitmap = builder.mLargeIcon;
            CharSequence charSequence4 = builder.mSubText;
            boolean z = builder.mUseChronometer;
            long j = builder.mNotification.when;
            ArrayList<NotificationCompat.Action> arrayList = builder.mActions;
            boolean z2 = mediaStyle.mShowCancelButton;
            PendingIntent pendingIntent = mediaStyle.mCancelButtonIntent;
            int min = Math.min(arrayList.size(), 5);
            RemoteViews a = dc.a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, min <= 3 ? cv.h.notification_template_big_media_narrow : cv.h.notification_template_big_media, false);
            a.removeAllViews(cv.f.media_actions);
            if (min > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= min) {
                        break;
                    }
                    a.addView(cv.f.media_actions, dc.a(context, arrayList.get(i3)));
                    i2 = i3 + 1;
                }
            }
            if (z2) {
                a.setViewVisibility(cv.f.cancel_action, 0);
                a.setInt(cv.f.cancel_action, "setAlpha", context.getResources().getInteger(cv.g.cancel_button_image_alpha));
                a.setOnClickPendingIntent(cv.f.cancel_action, pendingIntent);
            } else {
                a.setViewVisibility(cv.f.cancel_action, 8);
            }
            notification.bigContentView = a;
            if (z2) {
                notification.flags |= 2;
            }
        }
    }

    /* access modifiers changed from: private */
    public static void addMediaStyleToBuilderIcs(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Builder builder) {
        if (builder.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) builder.mStyle;
            Context context = builder.mContext;
            CharSequence charSequence = builder.mContentTitle;
            CharSequence charSequence2 = builder.mContentText;
            CharSequence charSequence3 = builder.mContentInfo;
            int i = builder.mNumber;
            Bitmap bitmap = builder.mLargeIcon;
            CharSequence charSequence4 = builder.mSubText;
            boolean z = builder.mUseChronometer;
            long j = builder.mNotification.when;
            ArrayList<NotificationCompat.Action> arrayList = builder.mActions;
            int[] iArr = mediaStyle.mActionsToShowInCompact;
            boolean z2 = mediaStyle.mShowCancelButton;
            PendingIntent pendingIntent = mediaStyle.mCancelButtonIntent;
            RemoteViews a = dc.a(context, charSequence, charSequence2, charSequence3, i, bitmap, charSequence4, z, j, cv.h.notification_template_media, true);
            int size = arrayList.size();
            int min = iArr == null ? 0 : Math.min(iArr.length, 3);
            a.removeAllViews(cv.f.media_actions);
            if (min > 0) {
                for (int i2 = 0; i2 < min; i2++) {
                    if (i2 >= size) {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i2), Integer.valueOf(size - 1)}));
                    }
                    a.addView(cv.f.media_actions, dc.a(context, arrayList.get(iArr[i2])));
                }
            }
            if (z2) {
                a.setViewVisibility(cv.f.end_padder, 8);
                a.setViewVisibility(cv.f.cancel_action, 0);
                a.setOnClickPendingIntent(cv.f.cancel_action, pendingIntent);
                a.setInt(cv.f.cancel_action, "setAlpha", context.getResources().getInteger(cv.g.cancel_button_image_alpha));
            } else {
                a.setViewVisibility(cv.f.end_padder, 0);
                a.setViewVisibility(cv.f.cancel_action, 8);
            }
            notificationBuilderWithBuilderAccessor.getBuilder().setContent(a);
            if (z2) {
                notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void addMediaStyleToBuilderLollipop(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor, NotificationCompat.Style style) {
        if (style instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) style;
            int[] iArr = mediaStyle.mActionsToShowInCompact;
            Object obj = mediaStyle.mToken != null ? mediaStyle.mToken.a : null;
            Notification.MediaStyle mediaStyle2 = new Notification.MediaStyle(notificationBuilderWithBuilderAccessor.getBuilder());
            if (iArr != null) {
                mediaStyle2.setShowActionsInCompactView(iArr);
            }
            if (obj != null) {
                mediaStyle2.setMediaSession((MediaSession.Token) obj);
            }
        }
    }
}
