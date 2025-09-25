.class public final Landroidx/compose/animation/core/KeyframesWithSplineSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
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
    value = "SMAP\nAnimationSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesWithSplineSpec\n+ 2 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,786:1\n382#2,4:787\n354#2,6:791\n364#2,3:798\n367#2,2:802\n387#2,2:804\n370#2,6:806\n389#2:812\n1810#3:797\n1672#3:801\n*S KotlinDebug\n*F\n+ 1 AnimationSpec.kt\nandroidx/compose/animation/core/KeyframesWithSplineSpec\n*L\n618#1:787,4\n618#1:791,6\n618#1:798,3\n618#1:802,2\n618#1:804,2\n618#1:806,6\n618#1:812\n618#1:797\n618#1:801\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000eB\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J,\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0008\u0008\u0001\u0010\n*\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\n0\rH\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec;",
        "T",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "config",
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V",
        "getConfig",
        "()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "KeyframesWithSplineSpecConfig",
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
.field private final config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;)V
    .locals 0
    .param p1, "config"    # Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    return-void
.end method


# virtual methods
.method public final getConfig()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig<",
            "TT;>;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    return-object v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 599
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object v0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 24
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    .line 615
    move-object/from16 v0, p0

    new-instance v1, Landroidx/collection/MutableIntList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 616
    .local v1, "timestamps":Landroidx/collection/MutableIntList;
    new-instance v5, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v5, v2, v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    .line 618
    .local v4, "timeToVectorMap":Landroidx/collection/MutableIntObjectMap;
    iget-object v5, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v5}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getKeyframes$animation_core_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v5

    check-cast v5, Landroidx/collection/IntObjectMap;

    .local v5, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v6, 0x0

    .line 787
    .local v6, "$i$f$forEach":I
    iget-object v7, v5, Landroidx/collection/IntObjectMap;->keys:[I

    .line 788
    .local v7, "k$iv":[I
    iget-object v8, v5, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 790
    .local v8, "v$iv":[Ljava/lang/Object;
    move-object v9, v5

    .local v9, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v10, 0x0

    .line 791
    .local v10, "$i$f$forEachIndexed":I
    iget-object v11, v9, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 792
    .local v11, "m$iv$iv":[J
    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    .line 794
    .local v12, "lastIndex$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv":I
    if-gt v13, v12, :cond_4

    .line 795
    :goto_0
    aget-wide v14, v11, v13

    .line 796
    .local v14, "slot$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v18, 0x0

    .line 797
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v2, v16

    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v6    # "$i$f$forEach":I
    .local v2, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v16, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v17, "$i$f$forEach":I
    not-long v5, v2

    const/16 v19, 0x7

    shl-long v5, v5, v19

    and-long/2addr v5, v2

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v5, v19

    .line 796
    .end local v2    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v19

    if-eqz v2, :cond_3

    .line 798
    sub-int v2, v13, v12

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 799
    .local v2, "bitCount$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 800
    const-wide/16 v19, 0xff

    and-long v19, v14, v19

    .local v19, "value$iv$iv$iv":J
    const/4 v6, 0x0

    .line 801
    .local v6, "$i$f$isFull":I
    const-wide/16 v21, 0x80

    cmp-long v18, v19, v21

    if-gez v18, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    .line 800
    .end local v6    # "$i$f$isFull":I
    .end local v19    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v6, :cond_1

    .line 802
    shl-int/lit8 v6, v13, 0x3

    add-int/2addr v6, v5

    .line 803
    .local v6, "index$iv$iv":I
    move/from16 v18, v6

    .local v18, "index$iv":I
    const/16 v19, 0x0

    .line 804
    .local v19, "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    aget v20, v7, v18

    .local v20, "key":I
    aget-object v21, v8, v18

    check-cast v21, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .local v21, "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    move/from16 v22, v20

    .end local v20    # "key":I
    .local v22, "key":I
    const/16 v20, 0x0

    .line 619
    .local v20, "$i$a$-forEach-KeyframesWithSplineSpec$vectorize$1":I
    move/from16 v3, v22

    .end local v22    # "key":I
    .local v3, "key":I
    invoke-virtual {v1, v3}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 620
    move/from16 v22, v6

    .end local v6    # "index$iv$iv":I
    .local v22, "index$iv$iv":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    move-object/from16 v23, v7

    .end local v7    # "k$iv":[I
    .local v23, "k$iv":[I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->getValue$animation_core_release()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 621
    nop

    .line 804
    .end local v3    # "key":I
    .end local v20    # "$i$a$-forEach-KeyframesWithSplineSpec$vectorize$1":I
    .end local v21    # "value":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    nop

    .line 805
    nop

    .line 803
    .end local v18    # "index$iv":I
    .end local v19    # "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    goto :goto_3

    .line 800
    .end local v22    # "index$iv$iv":I
    .end local v23    # "k$iv":[I
    .restart local v7    # "k$iv":[I
    :cond_1
    move-object/from16 v23, v7

    .line 806
    .end local v7    # "k$iv":[I
    .restart local v23    # "k$iv":[I
    :goto_3
    const/16 v3, 0x8

    shr-long/2addr v14, v3

    .line 799
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v23

    goto :goto_1

    .end local v23    # "k$iv":[I
    .restart local v7    # "k$iv":[I
    :cond_2
    move-object/from16 v23, v7

    .line 808
    .end local v5    # "j$iv$iv":I
    .end local v7    # "k$iv":[I
    .restart local v23    # "k$iv":[I
    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 796
    .end local v2    # "bitCount$iv$iv":I
    .end local v23    # "k$iv":[I
    .restart local v7    # "k$iv":[I
    :cond_3
    move-object/from16 v23, v7

    .line 794
    .end local v7    # "k$iv":[I
    .end local v14    # "slot$iv$iv":J
    .restart local v23    # "k$iv":[I
    :goto_4
    if-eq v13, v12, :cond_5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v17    # "$i$f$forEach":I
    .end local v23    # "k$iv":[I
    .local v5, "this_$iv":Landroidx/collection/IntObjectMap;
    .local v6, "$i$f$forEach":I
    .restart local v7    # "k$iv":[I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v23, v7

    .line 811
    .end local v5    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "k$iv":[I
    .end local v13    # "i$iv$iv":I
    .restart local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v17    # "$i$f$forEach":I
    .restart local v23    # "k$iv":[I
    :cond_5
    nop

    .line 812
    .end local v9    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 622
    .end local v8    # "v$iv":[Ljava/lang/Object;
    .end local v16    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v17    # "$i$f$forEach":I
    .end local v23    # "k$iv":[I
    invoke-virtual {v1}, Landroidx/collection/MutableIntList;->sort()V

    .line 623
    new-instance v2, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;

    .line 624
    move-object v3, v1

    check-cast v3, Landroidx/collection/IntList;

    .line 625
    move-object v5, v4

    check-cast v5, Landroidx/collection/IntObjectMap;

    .line 626
    iget-object v6, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v6}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDurationMillis()I

    move-result v6

    .line 627
    iget-object v7, v0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->config:Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    invoke-virtual {v7}, Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;->getDelayMillis()I

    move-result v7

    .line 623
    invoke-direct {v2, v3, v5, v6, v7}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;-><init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;II)V

    check-cast v2, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    return-object v2
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 1
    .param p1, "converter"    # Landroidx/compose/animation/core/TwoWayConverter;

    .line 599
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    return-object v0
.end method
