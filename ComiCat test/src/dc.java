// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.widget.RemoteViews;
import java.text.NumberFormat;

public final class dc
{

    public static RemoteViews a(Context context, android.support.v4.app.NotificationCompatBase.Action action)
    {
        boolean flag;
        if (action.getActionIntent() == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        context = new RemoteViews(context.getPackageName(), cv.h.notification_media_action);
        context.setImageViewResource(cv.f.action0, action.getIcon());
        if (!flag)
        {
            context.setOnClickPendingIntent(cv.f.action0, action.getActionIntent());
        }
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            context.setContentDescription(cv.f.action0, action.getTitle());
        }
        return context;
    }

    public static RemoteViews a(Context context, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, int i, Bitmap bitmap, CharSequence charsequence3, boolean flag, 
            long l, int j, boolean flag1)
    {
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), j);
        j = 0;
        boolean flag2 = false;
        if (bitmap != null && android.os.Build.VERSION.SDK_INT >= 16)
        {
            remoteviews.setImageViewBitmap(cv.f.icon, bitmap);
        } else
        {
            remoteviews.setViewVisibility(cv.f.icon, 8);
        }
        if (charsequence != null)
        {
            remoteviews.setTextViewText(cv.f.title, charsequence);
        }
        if (charsequence1 != null)
        {
            remoteviews.setTextViewText(cv.f.text, charsequence1);
            j = 1;
        }
        if (charsequence2 != null)
        {
            remoteviews.setTextViewText(cv.f.info, charsequence2);
            remoteviews.setViewVisibility(cv.f.info, 0);
            i = 1;
        } else
        if (i > 0)
        {
            if (i > context.getResources().getInteger(cv.g.status_bar_notification_info_maxnum))
            {
                remoteviews.setTextViewText(cv.f.info, context.getResources().getString(cv.i.status_bar_notification_info_overflow));
            } else
            {
                charsequence = NumberFormat.getIntegerInstance();
                remoteviews.setTextViewText(cv.f.info, charsequence.format(i));
            }
            remoteviews.setViewVisibility(cv.f.info, 0);
            i = 1;
        } else
        {
            remoteviews.setViewVisibility(cv.f.info, 8);
            i = j;
        }
        j = ((flag2) ? 1 : 0);
        if (charsequence3 != null)
        {
            j = ((flag2) ? 1 : 0);
            if (android.os.Build.VERSION.SDK_INT >= 16)
            {
                remoteviews.setTextViewText(cv.f.text, charsequence3);
                float f;
                if (charsequence1 != null)
                {
                    remoteviews.setTextViewText(cv.f.text2, charsequence1);
                    remoteviews.setViewVisibility(cv.f.text2, 0);
                    j = 1;
                } else
                {
                    remoteviews.setViewVisibility(cv.f.text2, 8);
                    j = ((flag2) ? 1 : 0);
                }
            }
        }
        if (j != 0 && android.os.Build.VERSION.SDK_INT >= 16)
        {
            if (flag1)
            {
                f = context.getResources().getDimensionPixelSize(cv.d.notification_subtext_size);
                remoteviews.setTextViewTextSize(cv.f.text, 0, f);
            }
            remoteviews.setViewPadding(cv.f.line1, 0, 0, 0, 0);
        }
        if (l != 0L)
        {
            if (flag)
            {
                remoteviews.setViewVisibility(cv.f.chronometer, 0);
                remoteviews.setLong(cv.f.chronometer, "setBase", (SystemClock.elapsedRealtime() - System.currentTimeMillis()) + l);
                remoteviews.setBoolean(cv.f.chronometer, "setStarted", true);
            } else
            {
                remoteviews.setViewVisibility(cv.f.time, 0);
                remoteviews.setLong(cv.f.time, "setTime", l);
            }
        }
        j = cv.f.line3;
        if (i != 0)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        remoteviews.setViewVisibility(j, i);
        return remoteviews;
    }
}
