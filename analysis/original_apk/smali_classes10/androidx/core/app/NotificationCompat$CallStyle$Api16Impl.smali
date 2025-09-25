.class Landroidx/core/app/NotificationCompat$CallStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$CallStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBuilder(Landroid/app/Notification$CallStyle;Landroid/app/Notification$Builder;)V
    .locals 0
    .param p0, "style"    # Landroid/app/Notification$CallStyle;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 5224
    invoke-virtual {p0, p1}, Landroid/app/Notification$CallStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 5225
    return-void
.end method
