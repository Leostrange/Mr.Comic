.class public final Landroidx/compose/animation/core/FloatTweenSpec;
.super Ljava/lang/Object;
.source "FloatAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J \u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J(\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J(\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/animation/core/FloatTweenSpec;",
        "Landroidx/compose/animation/core/FloatAnimationSpec;",
        "duration",
        "",
        "delay",
        "easing",
        "Landroidx/compose/animation/core/Easing;",
        "(IILandroidx/compose/animation/core/Easing;)V",
        "getDelay",
        "()I",
        "getDuration",
        "clampPlayTime",
        "",
        "playTime",
        "getDurationNanos",
        "initialValue",
        "",
        "targetValue",
        "initialVelocity",
        "getValueFromNanos",
        "playTimeNanos",
        "getVelocityFromNanos",
        "animation-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final delay:I

.field private final duration:I

.field private final easing:Landroidx/compose/animation/core/Easing;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/animation/core/Easing;)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "easing"    # Landroidx/compose/animation/core/Easing;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    .line 202
    iput p2, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    .line 203
    iput-object p3, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    .line 200
    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 200
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 201
    const/16 p1, 0x12c

    .line 200
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 202
    const/4 p2, 0x0

    .line 200
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 203
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p3

    .line 200
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatTweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 263
    return-void
.end method

.method private final clampPlayTime(J)J
    .locals 8
    .param p1, "playTime"    # J

    .line 220
    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    int-to-long v0, v0

    sub-long v2, p1, v0

    const-wide/16 v4, 0x0

    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final getDelay()I
    .locals 1

    .line 202
    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 201
    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    return v0
.end method

.method public getDurationNanos(FFF)J
    .locals 4
    .param p1, "initialValue"    # F
    .param p2, "targetValue"    # F
    .param p3, "initialVelocity"    # F

    .line 229
    iget v0, p0, Landroidx/compose/animation/core/FloatTweenSpec;->delay:I

    iget v1, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getValueFromNanos(JFFF)F
    .locals 8
    .param p1, "playTimeNanos"    # J
    .param p3, "initialValue"    # F
    .param p4, "targetValue"    # F
    .param p5, "initialVelocity"    # F

    .line 212
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 213
    .local v0, "playTimeMillis":J
    invoke-direct {p0, v0, v1}, Landroidx/compose/animation/core/FloatTweenSpec;->clampPlayTime(J)J

    move-result-wide v2

    .line 214
    .local v2, "clampedPlayTime":J
    iget v4, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    long-to-float v4, v2

    iget v6, p0, Landroidx/compose/animation/core/FloatTweenSpec;->duration:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 215
    .local v4, "rawFraction":F
    :goto_0
    iget-object v6, p0, Landroidx/compose/animation/core/FloatTweenSpec;->easing:Landroidx/compose/animation/core/Easing;

    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    invoke-interface {v6, v5}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result v5

    .line 216
    .local v5, "fraction":F
    invoke-static {p3, p4, v5}, Landroidx/compose/animation/core/VectorConvertersKt;->lerp(FFF)F

    move-result v6

    return v6
.end method

.method public getVelocityFromNanos(JFFF)F
    .locals 14
    .param p1, "playTimeNanos"    # J
    .param p3, "initialValue"    # F
    .param p4, "targetValue"    # F
    .param p5, "initialVelocity"    # F

    .line 242
    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 243
    .local v2, "playTimeMillis":J
    move-object v10, p0

    invoke-direct {p0, v2, v3}, Landroidx/compose/animation/core/FloatTweenSpec;->clampPlayTime(J)J

    move-result-wide v11

    .line 244
    .local v11, "clampedPlayTime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v11, v4

    if-gez v6, :cond_0

    .line 245
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    cmp-long v4, v11, v4

    if-nez v4, :cond_1

    .line 247
    return p5

    .line 249
    :cond_1
    nop

    .line 250
    const-wide/16 v4, 0x1

    sub-long v4, v11, v4

    mul-long v5, v4, v0

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 249
    move-object v4, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(JFFF)F

    move-result v13

    .line 255
    .local v13, "startNum":F
    nop

    .line 256
    mul-long v5, v11, v0

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 255
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/animation/core/FloatTweenSpec;->getValueFromNanos(JFFF)F

    move-result v0

    .line 261
    .local v0, "endNum":F
    sub-float v1, v0, v13

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v4

    return v1
.end method
