.class Landroidx/core/app/NotificationCompat$MessagingStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigText(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p0, "bigTextStyle"    # Landroid/app/Notification$BigTextStyle;
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 4574
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    return-object v0
.end method

.method static createBigTextStyle(Landroid/app/Notification$Builder;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;

    .line 4562
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    return-object v0
.end method

.method static setBigContentTitle(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p0, "bigTextStyle"    # Landroid/app/Notification$BigTextStyle;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 4568
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    return-object v0
.end method

.method static setBuilder(Landroid/app/Notification$Style;Landroid/app/Notification$Builder;)V
    .locals 0
    .param p0, "style"    # Landroid/app/Notification$Style;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 4557
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4558
    return-void
.end method
