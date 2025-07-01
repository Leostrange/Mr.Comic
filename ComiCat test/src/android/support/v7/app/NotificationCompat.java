// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.widget.RemoteViews;
import dc;
import java.util.List;

public class NotificationCompat extends android.support.v4.app.NotificationCompat
{
    public static class Builder extends android.support.v4.app.Builder
    {

        protected android.support.v4.app.BuilderExtender getExtender()
        {
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                return new LollipopExtender();
            }
            if (android.os.Build.VERSION.SDK_INT >= 16)
            {
                return new JellybeanExtender();
            }
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                return new IceCreamSandwichExtender();
            } else
            {
                return super.getExtender();
            }
        }

        public Builder(Context context)
        {
            super(context);
        }
    }

    static class IceCreamSandwichExtender extends android.support.v4.app.BuilderExtender
    {

        public Notification build(android.support.v4.app.Builder builder, NotificationBuilderWithBuilderAccessor notificationbuilderwithbuilderaccessor)
        {
            NotificationCompat.addMediaStyleToBuilderIcs(notificationbuilderwithbuilderaccessor, builder);
            return notificationbuilderwithbuilderaccessor.build();
        }

        private IceCreamSandwichExtender()
        {
        }

    }

    static class JellybeanExtender extends android.support.v4.app.BuilderExtender
    {

        public Notification build(android.support.v4.app.Builder builder, NotificationBuilderWithBuilderAccessor notificationbuilderwithbuilderaccessor)
        {
            NotificationCompat.addMediaStyleToBuilderIcs(notificationbuilderwithbuilderaccessor, builder);
            notificationbuilderwithbuilderaccessor = notificationbuilderwithbuilderaccessor.build();
            NotificationCompat.addBigMediaStyleToBuilderJellybean(notificationbuilderwithbuilderaccessor, builder);
            return notificationbuilderwithbuilderaccessor;
        }

        private JellybeanExtender()
        {
        }

    }

    static class LollipopExtender extends android.support.v4.app.BuilderExtender
    {

        public Notification build(android.support.v4.app.Builder builder, NotificationBuilderWithBuilderAccessor notificationbuilderwithbuilderaccessor)
        {
            NotificationCompat.addMediaStyleToBuilderLollipop(notificationbuilderwithbuilderaccessor, builder.mStyle);
            return notificationbuilderwithbuilderaccessor.build();
        }

        private LollipopExtender()
        {
        }

    }

    public static class MediaStyle extends android.support.v4.app.Style
    {

        int mActionsToShowInCompact[];
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        android.support.v4.media.session.MediaSessionCompat.Token mToken;

        public MediaStyle setCancelButtonIntent(PendingIntent pendingintent)
        {
            mCancelButtonIntent = pendingintent;
            return this;
        }

        public MediaStyle setMediaSession(android.support.v4.media.session.MediaSessionCompat.Token token)
        {
            mToken = token;
            return this;
        }

        public transient MediaStyle setShowActionsInCompactView(int ai[])
        {
            mActionsToShowInCompact = ai;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean flag)
        {
            mShowCancelButton = flag;
            return this;
        }

        public MediaStyle()
        {
            mActionsToShowInCompact = null;
        }

        public MediaStyle(android.support.v4.app.Builder builder)
        {
            mActionsToShowInCompact = null;
            setBuilder(builder);
        }
    }


    public NotificationCompat()
    {
    }

    private static void addBigMediaStyleToBuilderJellybean(Notification notification, android.support.v4.app.Builder builder)
    {
        if (builder.mStyle instanceof MediaStyle)
        {
            Object obj1 = (MediaStyle)builder.mStyle;
            Context context = builder.mContext;
            Object obj = builder.mContentTitle;
            CharSequence charsequence = builder.mContentText;
            CharSequence charsequence1 = builder.mContentInfo;
            int k = builder.mNumber;
            android.graphics.Bitmap bitmap = builder.mLargeIcon;
            CharSequence charsequence2 = builder.mSubText;
            boolean flag = builder.mUseChronometer;
            long l = builder.mNotification.when;
            builder = builder.mActions;
            boolean flag1 = ((MediaStyle) (obj1)).mShowCancelButton;
            obj1 = ((MediaStyle) (obj1)).mCancelButtonIntent;
            int j = Math.min(builder.size(), 5);
            int i;
            if (j <= 3)
            {
                i = cv.h.notification_template_big_media_narrow;
            } else
            {
                i = cv.h.notification_template_big_media;
            }
            obj = dc.a(context, ((CharSequence) (obj)), charsequence, charsequence1, k, bitmap, charsequence2, flag, l, i, false);
            ((RemoteViews) (obj)).removeAllViews(cv.f.media_actions);
            if (j > 0)
            {
                for (i = 0; i < j; i++)
                {
                    RemoteViews remoteviews = dc.a(context, (android.support.v4.app.NotificationCompatBase.Action)builder.get(i));
                    ((RemoteViews) (obj)).addView(cv.f.media_actions, remoteviews);
                }

            }
            if (flag1)
            {
                ((RemoteViews) (obj)).setViewVisibility(cv.f.cancel_action, 0);
                ((RemoteViews) (obj)).setInt(cv.f.cancel_action, "setAlpha", context.getResources().getInteger(cv.g.cancel_button_image_alpha));
                ((RemoteViews) (obj)).setOnClickPendingIntent(cv.f.cancel_action, ((PendingIntent) (obj1)));
            } else
            {
                ((RemoteViews) (obj)).setViewVisibility(cv.f.cancel_action, 8);
            }
            notification.bigContentView = ((RemoteViews) (obj));
            if (flag1)
            {
                notification.flags = notification.flags | 2;
            }
        }
    }

    private static void addMediaStyleToBuilderIcs(NotificationBuilderWithBuilderAccessor notificationbuilderwithbuilderaccessor, android.support.v4.app.Builder builder)
    {
        if (builder.mStyle instanceof MediaStyle)
        {
            Object obj1 = (MediaStyle)builder.mStyle;
            Context context = builder.mContext;
            Object obj = builder.mContentTitle;
            CharSequence charsequence = builder.mContentText;
            CharSequence charsequence1 = builder.mContentInfo;
            int i = builder.mNumber;
            android.graphics.Bitmap bitmap = builder.mLargeIcon;
            CharSequence charsequence2 = builder.mSubText;
            boolean flag = builder.mUseChronometer;
            long l = builder.mNotification.when;
            builder = builder.mActions;
            int ai[] = ((MediaStyle) (obj1)).mActionsToShowInCompact;
            boolean flag1 = ((MediaStyle) (obj1)).mShowCancelButton;
            obj1 = ((MediaStyle) (obj1)).mCancelButtonIntent;
            obj = dc.a(context, ((CharSequence) (obj)), charsequence, charsequence1, i, bitmap, charsequence2, flag, l, cv.h.notification_template_media, true);
            int k = builder.size();
            if (ai == null)
            {
                i = 0;
            } else
            {
                i = Math.min(ai.length, 3);
            }
            ((RemoteViews) (obj)).removeAllViews(cv.f.media_actions);
            if (i > 0)
            {
                for (int j = 0; j < i; j++)
                {
                    if (j >= k)
                    {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[] {
                            Integer.valueOf(j), Integer.valueOf(k - 1)
                        }));
                    }
                    RemoteViews remoteviews = dc.a(context, (android.support.v4.app.NotificationCompatBase.Action)builder.get(ai[j]));
                    ((RemoteViews) (obj)).addView(cv.f.media_actions, remoteviews);
                }

            }
            if (flag1)
            {
                ((RemoteViews) (obj)).setViewVisibility(cv.f.end_padder, 8);
                ((RemoteViews) (obj)).setViewVisibility(cv.f.cancel_action, 0);
                ((RemoteViews) (obj)).setOnClickPendingIntent(cv.f.cancel_action, ((PendingIntent) (obj1)));
                ((RemoteViews) (obj)).setInt(cv.f.cancel_action, "setAlpha", context.getResources().getInteger(cv.g.cancel_button_image_alpha));
            } else
            {
                ((RemoteViews) (obj)).setViewVisibility(cv.f.end_padder, 0);
                ((RemoteViews) (obj)).setViewVisibility(cv.f.cancel_action, 8);
            }
            notificationbuilderwithbuilderaccessor.getBuilder().setContent(((RemoteViews) (obj)));
            if (flag1)
            {
                notificationbuilderwithbuilderaccessor.getBuilder().setOngoing(true);
            }
        }
    }

    private static void addMediaStyleToBuilderLollipop(NotificationBuilderWithBuilderAccessor notificationbuilderwithbuilderaccessor, android.support.v4.app.Style style)
    {
        if (style instanceof MediaStyle)
        {
            style = (MediaStyle)style;
            int ai[] = ((MediaStyle) (style)).mActionsToShowInCompact;
            if (((MediaStyle) (style)).mToken != null)
            {
                style = ((android.support.v4.app.Style) (((MediaStyle) (style)).mToken.a));
            } else
            {
                style = null;
            }
            notificationbuilderwithbuilderaccessor = new android.app.Notification.MediaStyle(notificationbuilderwithbuilderaccessor.getBuilder());
            if (ai != null)
            {
                notificationbuilderwithbuilderaccessor.setShowActionsInCompactView(ai);
            }
            if (style != null)
            {
                notificationbuilderwithbuilderaccessor.setMediaSession((android.media.session.MediaSession.Token)style);
            }
        }
    }



}
