.class public final Landroidx/compose/animation/core/KeyframesSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;,
        Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesSpec\n+ 2 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,786:1\n382#2,4:787\n354#2,6:791\n364#2,3:798\n367#2,2:802\n387#2,2:804\n370#2,6:806\n389#2:812\n1810#3:797\n1672#3:801\n*S KotlinDebug\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesSpec\n*L\n560#1:787,4\n560#1:791,6\n560#1:798,3\n560#1:802,2\n560#1:804,2\n560#1:806,6\n560#1:812\n560#1:797\n560#1:801\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u000e\u000fB\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J,\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0008\u0008\u0001\u0010\n*\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\n0\rH\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/animation/core/KeyframesSpec;",
        "T",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "config",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;",
        "(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V",
        "getConfig",
        "()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedKeyframesSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "KeyframeEntity",
        "KeyframesSpecConfig",
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
.field private final config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V
    .locals 0
    .param p1, "config"    # Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    return-void
.end method


# virtual methods
.method public final getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    return-object v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 494
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 494
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    return-object v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 494
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    return-object v0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;
    .locals 23
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedKeyframesSpec<",
            "TV;>;"
        }
    .end annotation

    .line 559
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 560
    .local v1, "vectorizedKeyframes":Ljava/util/Map;
    iget-object v2, v0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getKeyframes$animation_core_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v2

    check-cast v2, Landroidx/collection/IntObjectMap;

    .local v2, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v3, 0x0

    .line 787
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->keys:[I

    .line 788
    .local v4, "k$iv":[I
    iget-object v5, v2, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 790
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v7, 0x0

    .line 791
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 792
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 794
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_4

    .line 795
    :goto_0
    aget-wide v11, v8, v10

    .line 796
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 797
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v3    # "$i$f$forEach":I
    .local v16, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v17, "$i$f$forEach":I
    not-long v2, v13

    const/16 v18, 0x7

    shl-long v2, v2, v18

    and-long/2addr v2, v13

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v18

    .line 796
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    .line 798
    sub-int v2, v10, v9

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 799
    .local v2, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v2, :cond_2

    .line 800
    const-wide/16 v14, 0xff

    and-long/2addr v14, v11

    .local v14, "value$iv$iv$iv":J
    const/16 v18, 0x0

    .line 801
    .local v18, "$i$f$isFull":I
    const-wide/16 v19, 0x80

    cmp-long v19, v14, v19

    if-gez v19, :cond_0

    const/16 v19, 0x1

    goto :goto_2

    :cond_0
    const/16 v19, 0x0

    .line 800
    .end local v14    # "value$iv$iv$iv":J
    .end local v18    # "$i$f$isFull":I
    :goto_2
    if-eqz v19, :cond_1

    .line 802
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 803
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v18, 0x0

    .line 804
    .local v18, "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    aget v19, v4, v15

    .local v19, "key":I
    aget-object v20, v5, v15

    move-object/from16 v3, v20

    check-cast v3, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .local v3, "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    const/16 v20, 0x0

    move-object/from16 v21, v4

    .end local v4    # "k$iv":[I
    .local v20, "$i$a$-forEach-KeyframesSpec$vectorize$1":I
    .local v21, "k$iv":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 561
    move-object/from16 v22, v5

    .end local v5    # "v$iv":[Ljava/lang/Object;
    .local v22, "v$iv":[Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->toPair$animation_core_release(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    nop

    .line 804
    .end local v3    # "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .end local v19    # "key":I
    .end local v20    # "$i$a$-forEach-KeyframesSpec$vectorize$1":I
    nop

    .line 805
    nop

    .line 803
    .end local v15    # "index$iv":I
    .end local v18    # "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    goto :goto_3

    .line 800
    .end local v14    # "index$iv$iv":I
    .end local v21    # "k$iv":[I
    .end local v22    # "v$iv":[Ljava/lang/Object;
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 806
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .restart local v21    # "k$iv":[I
    .restart local v22    # "v$iv":[Ljava/lang/Object;
    :goto_3
    const/16 v3, 0x8

    shr-long/2addr v11, v3

    .line 799
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_1

    .end local v21    # "k$iv":[I
    .end local v22    # "v$iv":[Ljava/lang/Object;
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 808
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v13    # "j$iv$iv":I
    .restart local v21    # "k$iv":[I
    .restart local v22    # "v$iv":[Ljava/lang/Object;
    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 796
    .end local v2    # "bitCount$iv$iv":I
    .end local v21    # "k$iv":[I
    .end local v22    # "v$iv":[Ljava/lang/Object;
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 794
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v11    # "slot$iv$iv":J
    .restart local v21    # "k$iv":[I
    .restart local v22    # "v$iv":[Ljava/lang/Object;
    :goto_4
    if-eq v10, v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto/16 :goto_0

    .end local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v17    # "$i$f$forEach":I
    .end local v21    # "k$iv":[I
    .end local v22    # "v$iv":[Ljava/lang/Object;
    .local v2, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v3, "$i$f$forEach":I
    .restart local v4    # "k$iv":[I
    .restart local v5    # "v$iv":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 811
    .end local v2    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[I
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v10    # "i$iv$iv":I
    .restart local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v17    # "$i$f$forEach":I
    .restart local v21    # "k$iv":[I
    .restart local v22    # "v$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 812
    .end local v6    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 563
    .end local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v17    # "$i$f$forEach":I
    .end local v21    # "k$iv":[I
    .end local v22    # "v$iv":[Ljava/lang/Object;
    new-instance v2, Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    .line 564
    nop

    .line 565
    iget-object v3, v0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDurationMillis()I

    move-result v3

    .line 566
    iget-object v4, v0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {v4}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDelayMillis()I

    move-result v4

    .line 563
    invoke-direct {v2, v1, v3, v4}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Ljava/util/Map;II)V

    return-object v2
.end method
