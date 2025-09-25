.class Landroidx/core/app/NotificationCompat$Style$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setTextViewTextSize(Landroid/widget/RemoteViews;IIF)V
    .locals 0
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .line 3191
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 3192
    return-void
.end method

.method static setViewPadding(Landroid/widget/RemoteViews;IIIII)V
    .locals 0
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 3197
    invoke-virtual/range {p0 .. p5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3198
    return-void
.end method
