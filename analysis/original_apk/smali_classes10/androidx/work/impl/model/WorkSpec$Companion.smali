.class public final Landroidx/work/impl/model/WorkSpec$Companion;
.super Ljava/lang/Object;
.source "WorkSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J^\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/work/impl/model/WorkSpec$Companion;",
        "",
        "()V",
        "SCHEDULE_NOT_REQUESTED_YET",
        "",
        "TAG",
        "",
        "WORK_INFO_MAPPER",
        "Landroidx/arch/core/util/Function;",
        "",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        "Landroidx/work/WorkInfo;",
        "calculateNextRunTime",
        "isBackedOff",
        "",
        "runAttemptCount",
        "",
        "backoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "backoffDelayDuration",
        "lastEnqueueTime",
        "periodCount",
        "isPeriodic",
        "initialDelay",
        "flexDuration",
        "intervalDuration",
        "nextScheduleTimeOverride",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextRunTime(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J
    .locals 11
    .param p1, "isBackedOff"    # Z
    .param p2, "runAttemptCount"    # I
    .param p3, "backoffPolicy"    # Landroidx/work/BackoffPolicy;
    .param p4, "backoffDelayDuration"    # J
    .param p6, "lastEnqueueTime"    # J
    .param p8, "periodCount"    # I
    .param p9, "isPeriodic"    # Z
    .param p10, "initialDelay"    # J
    .param p12, "flexDuration"    # J
    .param p14, "intervalDuration"    # J
    .param p16, "nextScheduleTimeOverride"    # J

    move v0, p2

    move-object v1, p3

    move-wide v2, p4

    move-wide/from16 v4, p16

    const-string v6, "backoffPolicy"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    if-eqz p9, :cond_1

    .line 500
    if-nez p8, :cond_0

    move-wide v6, v4

    goto :goto_0

    .line 501
    :cond_0
    nop

    .line 502
    const-wide/32 v6, 0xdbba0

    add-long v6, p6, v6

    .line 501
    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    .line 500
    :goto_0
    return-wide v6

    .line 503
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_4

    .line 504
    sget-object v6, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v1, v6, :cond_2

    move v8, v9

    :cond_2
    move v6, v8

    .line 506
    .local v6, "isLinearBackoff":Z
    if-eqz v6, :cond_3

    int-to-long v7, v0

    mul-long/2addr v7, v2

    goto :goto_1

    .line 507
    :cond_3
    long-to-float v7, v2

    .line 508
    add-int/lit8 v8, v0, -0x1

    .line 506
    invoke-static {v7, v8}, Ljava/lang/Math;->scalb(FI)F

    move-result v7

    .line 510
    float-to-long v7, v7

    .line 506
    :goto_1
    nop

    .line 505
    nop

    .line 511
    .local v7, "delay":J
    const-wide/32 v9, 0x112a880

    invoke-static {v7, v8, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v9

    add-long v6, p6, v9

    .end local v6    # "isLinearBackoff":Z
    .end local v7    # "delay":J
    goto :goto_3

    .line 512
    :cond_4
    if-eqz p9, :cond_8

    .line 516
    if-nez p8, :cond_5

    add-long v6, p6, p10

    goto :goto_2

    .line 517
    :cond_5
    add-long v6, p6, p14

    .line 516
    :goto_2
    nop

    .line 515
    nop

    .line 519
    .local v6, "schedule":J
    cmp-long v10, p12, p14

    if-eqz v10, :cond_6

    move v8, v9

    .line 522
    .local v8, "isFlexApplicable":Z
    :cond_6
    if-eqz v8, :cond_7

    if-nez p8, :cond_7

    .line 525
    sub-long v9, p14, p12

    add-long/2addr v6, v9

    .line 528
    :cond_7
    nop

    .end local v6    # "schedule":J
    .end local v8    # "isFlexApplicable":Z
    goto :goto_3

    .line 529
    :cond_8
    const-wide/16 v8, -0x1

    cmp-long v8, p6, v8

    if-nez v8, :cond_9

    .line 531
    goto :goto_3

    .line 533
    :cond_9
    add-long v6, p6, p10

    .line 499
    :goto_3
    return-wide v6
.end method
