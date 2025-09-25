.class public final Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;
.super Ljava/lang/Object;
.source "VectorizedMonoSplineKeyframesSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorizedMonoSplineKeyframesSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorizedMonoSplineKeyframesSpec.kt\nandroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec\n+ 2 IntList.kt\nandroidx/collection/IntList\n*L\n1#1,127:1\n266#2,6:128\n*S KotlinDebug\n*F\n+ 1 VectorizedMonoSplineKeyframesSpec.kt\nandroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec\n*L\n68#1:128,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B-\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ-\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001cJ-\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001cJ%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010 R\u0014\u0010\n\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0015\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "timestamps",
        "Landroidx/collection/IntList;",
        "keyframes",
        "Landroidx/collection/IntObjectMap;",
        "durationMillis",
        "",
        "delayMillis",
        "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;II)V",
        "getDelayMillis",
        "()I",
        "getDurationMillis",
        "lastInitialValue",
        "Landroidx/compose/animation/core/AnimationVector;",
        "lastTargetValue",
        "monoSpline",
        "Landroidx/compose/animation/core/MonoSpline;",
        "valueVector",
        "velocityVector",
        "getValueFromNanos",
        "playTimeNanos",
        "",
        "initialValue",
        "targetValue",
        "initialVelocity",
        "(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;",
        "getVelocityFromNanos",
        "init",
        "",
        "(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V",
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
.field private final delayMillis:I

.field private final durationMillis:I

.field private final keyframes:Landroidx/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/IntObjectMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field private lastInitialValue:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private lastTargetValue:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private monoSpline:Landroidx/compose/animation/core/MonoSpline;

.field private final timestamps:Landroidx/collection/IntList;

.field private valueVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private velocityVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;II)V
    .locals 0
    .param p1, "timestamps"    # Landroidx/collection/IntList;
    .param p2, "keyframes"    # Landroidx/collection/IntObjectMap;
    .param p3, "durationMillis"    # I
    .param p4, "delayMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntList;",
            "Landroidx/collection/IntObjectMap<",
            "TV;>;II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    .line 28
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    .line 29
    iput p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->durationMillis:I

    .line 30
    iput p4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->delayMillis:I

    .line 26
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 30
    const/4 p4, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;II)V

    .line 126
    return-void
.end method

.method private final init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 20
    .param p1, "initialValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p2, "targetValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p3, "initialVelocity"    # Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;TV;)V"
        }
    .end annotation

    .line 41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_0

    .line 42
    invoke-static/range {p1 .. p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 43
    invoke-static/range {p3 .. p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 45
    :cond_0
    iget-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    if-eqz v3, :cond_3

    .line 46
    iget-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string/jumbo v3, "lastInitialValue"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_2

    const-string/jumbo v3, "lastTargetValue"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 48
    :cond_3
    iput-object v1, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    .line 49
    iput-object v2, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    .line 51
    iget-object v3, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v3}, Landroidx/collection/IntObjectMap;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 52
    .local v3, "arraySize":I
    new-array v4, v3, [F

    .line 53
    .local v4, "times":[F
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v3, :cond_4

    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 54
    .local v9, "$i$a$-MutableList-VectorizedMonoSplineKeyframesSpec$init$values$1":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v10

    new-array v8, v10, [F

    .line 53
    .end local v8    # "it":I
    .end local v9    # "$i$a$-MutableList-VectorizedMonoSplineKeyframesSpec$init$values$1":I
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    check-cast v5, Ljava/util/List;

    .line 58
    .local v5, "values":Ljava/util/List;
    const/4 v7, 0x0

    aput v7, v4, v6

    .line 59
    add-int/lit8 v7, v3, -0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result v8

    int-to-float v8, v8

    const-wide/16 v9, 0x3e8

    long-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v4, v7

    .line 60
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 61
    .local v6, "vectorStart":[F
    add-int/lit8 v7, v3, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 62
    .local v7, "vectorEnd":[F
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v10

    :goto_2
    if-ge v8, v10, :cond_5

    .line 63
    invoke-virtual {v1, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v11

    aput v11, v6, v8

    .line 64
    invoke-virtual {v2, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v11

    aput v11, v7, v8

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 68
    .end local v8    # "i":I
    :cond_5
    iget-object v8, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    .local v8, "this_$iv":Landroidx/collection/IntList;
    const/4 v10, 0x0

    .line 128
    .local v10, "$i$f$forEachIndexed":I
    nop

    .line 129
    iget-object v11, v8, Landroidx/collection/IntList;->content:[I

    .line 130
    .local v11, "content$iv":[I
    const/4 v12, 0x0

    .local v12, "i$iv":I
    iget v13, v8, Landroidx/collection/IntList;->_size:I

    :goto_3
    if-ge v12, v13, :cond_7

    .line 131
    aget v14, v11, v12

    .local v14, "frameMillis":I
    move v15, v12

    .local v15, "index":I
    const/16 v16, 0x0

    .line 69
    .local v16, "$i$a$-forEachIndexed-VectorizedMonoSplineKeyframesSpec$init$1":I
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v1, v14}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/animation/core/AnimationVector;

    .line 70
    .local v1, "valueVector":Landroidx/compose/animation/core/AnimationVector;
    add-int/lit8 v17, v15, 0x1

    int-to-float v2, v14

    div-float/2addr v2, v9

    aput v2, v4, v17

    .line 71
    add-int/lit8 v2, v15, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 72
    .local v2, "vector":[F
    const/16 v17, 0x0

    move/from16 v18, v3

    .end local v3    # "arraySize":I
    .local v17, "i":I
    .local v18, "arraySize":I
    array-length v3, v2

    move-object/from16 v19, v6

    move/from16 v6, v17

    .end local v17    # "i":I
    .local v6, "i":I
    .local v19, "vectorStart":[F
    :goto_4
    if-ge v6, v3, :cond_6

    .line 73
    invoke-virtual {v1, v6}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v17

    aput v17, v2, v6

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 75
    .end local v6    # "i":I
    :cond_6
    nop

    .line 131
    .end local v1    # "valueVector":Landroidx/compose/animation/core/AnimationVector;
    .end local v2    # "vector":[F
    .end local v14    # "frameMillis":I
    .end local v15    # "index":I
    .end local v16    # "$i$a$-forEachIndexed-VectorizedMonoSplineKeyframesSpec$init$1":I
    nop

    .line 130
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move-object/from16 v6, v19

    goto :goto_3

    .end local v18    # "arraySize":I
    .end local v19    # "vectorStart":[F
    .restart local v3    # "arraySize":I
    .local v6, "vectorStart":[F
    :cond_7
    move/from16 v18, v3

    move-object/from16 v19, v6

    .line 133
    .end local v3    # "arraySize":I
    .end local v6    # "vectorStart":[F
    .end local v12    # "i$iv":I
    .restart local v18    # "arraySize":I
    .restart local v19    # "vectorStart":[F
    nop

    .line 76
    .end local v8    # "this_$iv":Landroidx/collection/IntList;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "content$iv":[I
    new-instance v1, Landroidx/compose/animation/core/MonoSpline;

    invoke-direct {v1, v4, v5}, Landroidx/compose/animation/core/MonoSpline;-><init>([FLjava/util/List;)V

    iput-object v1, v0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    .line 78
    .end local v4    # "times":[F
    .end local v5    # "values":Ljava/util/List;
    .end local v7    # "vectorEnd":[F
    .end local v18    # "arraySize":I
    .end local v19    # "vectorStart":[F
    :cond_8
    return-void
.end method


# virtual methods
.method public getDelayMillis()I
    .locals 1

    .line 30
    iget v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->delayMillis:I

    return v0
.end method

.method public getDurationMillis()I
    .locals 1

    .line 29
    iget v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->durationMillis:I

    return v0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 8
    .param p1, "playTimeNanos"    # J
    .param p3, "initialValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p4, "targetValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p5, "initialVelocity"    # Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    .line 86
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 87
    .local v0, "playTimeMillis":J
    move-object v2, p0

    check-cast v2, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 89
    .local v2, "clampedPlayTime":I
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v3, v2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v3, v2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/animation/core/AnimationVector;

    return-object v3

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 94
    return-object p4

    .line 95
    :cond_1
    if-gtz v2, :cond_2

    return-object p3

    .line 97
    :cond_2
    invoke-direct {p0, p3, p4, p5}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 99
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string/jumbo v3, "monoSpline"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    .line 100
    :cond_3
    int-to-float v5, v2

    const-wide/16 v6, 0x3e8

    long-to-float v6, v6

    div-float/2addr v5, v6

    .line 101
    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v7, "valueVector"

    if-nez v6, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    .line 99
    :cond_4
    invoke-virtual {v3, v5, v6}, Landroidx/compose/animation/core/MonoSpline;->getPos(FLandroidx/compose/animation/core/AnimationVector;)V

    .line 103
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v3, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v4, v3

    :goto_0
    return-object v4
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 9
    .param p1, "playTimeNanos"    # J
    .param p3, "initialValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p4, "targetValue"    # Landroidx/compose/animation/core/AnimationVector;
    .param p5, "initialVelocity"    # Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    .line 112
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 113
    .local v0, "playTimeMillis":J
    move-object v2, p0

    check-cast v2, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide v2

    .line 114
    .local v2, "clampedPlayTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 115
    return-object p5

    .line 118
    :cond_0
    invoke-direct {p0, p3, p4, p5}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 120
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const-string/jumbo v4, "monoSpline"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    .line 121
    :cond_1
    long-to-float v6, v2

    const-wide/16 v7, 0x3e8

    long-to-float v7, v7

    div-float/2addr v6, v7

    .line 122
    iget-object v7, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v8, "velocityVector"

    if-nez v7, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    .line 120
    :cond_2
    invoke-virtual {v4, v6, v7}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FLandroidx/compose/animation/core/AnimationVector;)V

    .line 124
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez v4, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v4

    :goto_0
    return-object v5
.end method
