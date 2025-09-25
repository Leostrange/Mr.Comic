.class Landroidx/work/impl/background/systemjob/SystemJobService$Api31Impl;
.super Ljava/lang/Object;
.source "SystemJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemjob/SystemJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method static getStopReason(Landroid/app/job/JobParameters;)I
    .locals 1
    .param p0, "jobParameters"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobParameters"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v0

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/SystemJobService;->stopReason(I)I

    move-result v0

    return v0
.end method
