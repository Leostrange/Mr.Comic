.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
.super Ljava/lang/Object;
.source "LazyLayoutAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutAnimation.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimation\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,207:1\n81#2:208\n107#2,2:209\n81#2:211\n107#2,2:212\n81#2:214\n107#2,2:215\n76#3:217\n109#3,2:218\n79#4:220\n*S KotlinDebug\n*F\n+ 1 LazyLayoutAnimation.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimation\n*L\n50#1:208\n50#1:209,2\n56#1:211\n56#1:212,2\n76#1:214\n76#1:215,2\n79#1:217\n79#1:218,2\n110#1:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 C2\u00020\u0001:\u0001CB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010=\u001a\u00020\u001cJ\u0018\u0010>\u001a\u00020\u001c2\u0006\u0010?\u001a\u00020!\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010%J\u0006\u0010A\u001a\u00020\u001cJ\u0006\u0010B\u001a\u00020\u001cR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R+\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\"\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\u00a2\u0006\u0002\u0008\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\"\u0010 \u001a\u00020!X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R1\u0010\'\u001a\u00020!2\u0006\u0010\u000e\u001a\u00020!8F@BX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0015\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%R\u001a\u0010+\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020-0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010.\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\t\"\u0004\u00080\u0010\u000bR\"\u00101\u001a\u00020!X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u00082\u0010#\"\u0004\u00083\u0010%R+\u00104\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00078F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020<0,X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006D"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "appearanceSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "getAppearanceSpec",
        "()Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "setAppearanceSpec",
        "(Landroidx/compose/animation/core/FiniteAnimationSpec;)V",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "<set-?>",
        "",
        "isAppearanceAnimationInProgress",
        "()Z",
        "setAppearanceAnimationInProgress",
        "(Z)V",
        "isAppearanceAnimationInProgress$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "isPlacementAnimationInProgress",
        "setPlacementAnimationInProgress",
        "isPlacementAnimationInProgress$delegate",
        "layerBlock",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getLayerBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "lookaheadOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getLookaheadOffset-nOcc-ac",
        "()J",
        "setLookaheadOffset--gyyYBs",
        "(J)V",
        "J",
        "placementDelta",
        "getPlacementDelta-nOcc-ac",
        "setPlacementDelta--gyyYBs",
        "placementDelta$delegate",
        "placementDeltaAnimation",
        "Landroidx/compose/animation/core/Animatable;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        "placementSpec",
        "getPlacementSpec",
        "setPlacementSpec",
        "rawOffset",
        "getRawOffset-nOcc-ac",
        "setRawOffset--gyyYBs",
        "visibility",
        "getVisibility",
        "()F",
        "setVisibility",
        "(F)V",
        "visibility$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "visibilityAnimation",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "animateAppearance",
        "animatePlacementDelta",
        "delta",
        "animatePlacementDelta--gyyYBs",
        "cancelPlacementAnimation",
        "stopAnimations",
        "Companion",
        "foundation_release"
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

.field public static final Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

.field private static final NotInitialized:J


# instance fields
.field private appearanceSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

.field private final isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

.field private final layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lookaheadOffset:J

.field private final placementDelta$delegate:Landroidx/compose/runtime/MutableState;

.field private final placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation
.end field

.field private placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private rawOffset:J

.field private final visibility$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final visibilityAnimation:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->$stable:I

    .line 184
    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->NotInitialized:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 21
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 39
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 50
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    .line 56
    invoke-static {v2, v3, v4, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    .line 66
    sget-wide v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->NotInitialized:J

    iput-wide v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->rawOffset:J

    .line 68
    new-instance v2, Landroidx/compose/animation/core/Animatable;

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v8

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v5}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    .line 70
    new-instance v2, Landroidx/compose/animation/core/Animatable;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    sget-object v6, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->visibilityAnimation:Landroidx/compose/animation/core/Animatable;

    .line 76
    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v2

    invoke-static {v2, v3, v4, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementDelta$delegate:Landroidx/compose/runtime/MutableState;

    .line 79
    invoke-static {v5}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->visibility$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 82
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$layerBlock$1;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$layerBlock$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 103
    sget-wide v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->NotInitialized:J

    iput-wide v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->lookaheadOffset:J

    .line 39
    return-void
.end method

.method public static final synthetic access$getNotInitialized$cp()J
    .locals 2

    .line 39
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->NotInitialized:J

    return-wide v0
.end method

.method public static final synthetic access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 39
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public static final synthetic access$getVisibilityAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;)Landroidx/compose/animation/core/Animatable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 39
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->visibilityAnimation:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public static final synthetic access$setAppearanceAnimationInProgress(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .param p1, "<set-?>"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setAppearanceAnimationInProgress(Z)V

    return-void
.end method

.method public static final synthetic access$setPlacementAnimationInProgress(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .param p1, "<set-?>"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementAnimationInProgress(Z)V

    return-void
.end method

.method public static final synthetic access$setPlacementDelta--gyyYBs(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .param p1, "<set-?>"    # J

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementDelta--gyyYBs(J)V

    return-void
.end method

.method public static final synthetic access$setVisibility(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;F)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .param p1, "<set-?>"    # F

    .line 39
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setVisibility(F)V

    return-void
.end method

.method private final setAppearanceAnimationInProgress(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 212
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 213
    nop

    .line 56
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setPlacementAnimationInProgress(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 209
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 210
    nop

    .line 50
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setPlacementDelta--gyyYBs(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 76
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementDelta$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 216
    nop

    .line 76
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setVisibility(F)V
    .locals 3
    .param p1, "<set-?>"    # F

    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->visibility$delegate:Landroidx/compose/runtime/MutableFloatState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 218
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 219
    nop

    .line 79
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public final animateAppearance()V
    .locals 8

    .line 147
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->appearanceSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 148
    .local v0, "spec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isAppearanceAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setAppearanceAnimationInProgress(Z)V

    .line 152
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setVisibility(F)V

    .line 153
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animateAppearance$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 163
    return-void

    .line 149
    :cond_1
    :goto_0
    return-void
.end method

.method public final animatePlacementDelta--gyyYBs(J)V
    .locals 15
    .param p1, "delta"    # J

    .line 109
    move-object v6, p0

    iget-object v2, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    if-nez v2, :cond_0

    return-void

    .line 110
    .local v2, "spec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->getPlacementDelta-nOcc-ac()J

    move-result-wide v0

    .local v0, "arg0$iv":J
    const/4 v3, 0x0

    .line 220
    .local v3, "$i$f$minus-qkQi6aY":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v0

    .line 110
    .end local v0    # "arg0$iv":J
    .end local v3    # "$i$f$minus-qkQi6aY":I
    move-wide v7, v0

    .line 111
    .local v7, "totalDelta":J
    invoke-direct {p0, v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementDelta--gyyYBs(J)V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementAnimationInProgress(Z)V

    .line 113
    iget-object v9, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animatePlacementDelta$1;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$animatePlacementDelta$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 144
    return-void
.end method

.method public final cancelPlacementAnimation()V
    .locals 7

    .line 90
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$cancelPlacementAnimation$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$cancelPlacementAnimation$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 97
    :cond_0
    return-void
.end method

.method public final getAppearanceSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->appearanceSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object v0
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getLayerBlock()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->layerBlock:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLookaheadOffset-nOcc-ac()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->lookaheadOffset:J

    return-wide v0
.end method

.method public final getPlacementDelta-nOcc-ac()J
    .locals 3

    .line 76
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementDelta$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 214
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v0

    .line 76
    return-wide v0
.end method

.method public final getPlacementSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object v0
.end method

.method public final getRawOffset-nOcc-ac()J
    .locals 2

    .line 66
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->rawOffset:J

    return-wide v0
.end method

.method public final getVisibility()F
    .locals 3

    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->visibility$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 217
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 79
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method public final isAppearanceAnimationInProgress()Z
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 56
    return v0
.end method

.method public final isPlacementAnimationInProgress()Z
    .locals 3

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 208
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 50
    return v0
.end method

.method public final setAppearanceSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->appearanceSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method public final setLookaheadOffset--gyyYBs(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 103
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->lookaheadOffset:J

    return-void
.end method

.method public final setPlacementSpec(Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method public final setRawOffset--gyyYBs(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 66
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->rawOffset:J

    return-void
.end method

.method public final stopAnimations()V
    .locals 9

    .line 166
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isPlacementAnimationInProgress()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementAnimationInProgress(Z)V

    .line 168
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$stopAnimations$1;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$stopAnimations$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->isAppearanceAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setAppearanceAnimationInProgress(Z)V

    .line 174
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$stopAnimations$2;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation$stopAnimations$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 178
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setPlacementDelta--gyyYBs(J)V

    .line 179
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->NotInitialized:J

    iput-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->rawOffset:J

    .line 180
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;->setVisibility(F)V

    .line 181
    return-void
.end method
