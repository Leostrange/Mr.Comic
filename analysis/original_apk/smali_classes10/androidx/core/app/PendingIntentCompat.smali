.class public final Landroidx/core/app/PendingIntentCompat;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/PendingIntentCompat$Api16Impl;,
        Landroidx/core/app/PendingIntentCompat$Api26Impl;,
        Landroidx/core/app/PendingIntentCompat$GatedCallback;,
        Landroidx/core/app/PendingIntentCompat$Api23Impl;,
        Landroidx/core/app/PendingIntentCompat$Flags;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMutabilityFlags(ZI)I
    .locals 2
    .param p0, "isMutable"    # Z
    .param p1, "flags"    # I

    .line 287
    if-eqz p0, :cond_0

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 289
    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    goto :goto_0

    .line 292
    :cond_0
    nop

    .line 293
    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    .line 297
    :cond_1
    :goto_0
    return p1
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "isMutable"    # Z

    .line 79
    nop

    .line 80
    nop

    .line 81
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 80
    invoke-static {p0, p1, p2, v0, p4}, Landroidx/core/app/PendingIntentCompat$Api16Impl;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "isMutable"    # Z

    .line 99
    nop

    .line 100
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 99
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "isMutable"    # Z

    .line 138
    nop

    .line 139
    nop

    .line 140
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 139
    invoke-static {p0, p1, p2, v0, p4}, Landroidx/core/app/PendingIntentCompat$Api16Impl;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "isMutable"    # Z

    .line 118
    nop

    .line 119
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 118
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "isMutable"    # Z

    .line 161
    nop

    .line 162
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 161
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "isMutable"    # Z

    .line 178
    nop

    .line 179
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 178
    invoke-static {p0, p1, p2, v0}, Landroidx/core/app/PendingIntentCompat$Api26Impl;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "isMutable"    # Z

    .line 197
    nop

    .line 198
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result v0

    .line 197
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static send(Landroid/app/PendingIntent;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "code"    # I
    .param p2, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v0, p2}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 218
    .local v0, "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->getCallback()Landroid/app/PendingIntent$OnFinished;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 219
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    .line 221
    .end local v0    # "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    return-void

    .line 217
    .restart local v0    # "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 242
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroidx/core/app/PendingIntentCompat;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "onFinished"    # Landroid/app/PendingIntent$OnFinished;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "requiredPermissions"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 267
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v0, p4}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 268
    .local v0, "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    nop

    .line 269
    :try_start_0
    invoke-static/range {p0 .. p7}, Landroidx/core/app/PendingIntentCompat$Api23Impl;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    .line 284
    .end local v0    # "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    return-void

    .line 267
    .restart local v0    # "gatedCallback":Landroidx/core/app/PendingIntentCompat$GatedCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
